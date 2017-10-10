//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.11
//Scilab Version - 6.0.0 ; OS - Windows

clear;
clc;
linedata=[2 4 0.0090   0.10  1.72       //Entering line data from table 6.2 & 6.3
          2 5 0.0045   0.05  0.88
          4 5 0.00225  0.025 0.44
          1 5 0.00150  0.02  0.00
          3 4 0.00075  0.01  0.00];
//enter busdata in the order type (1.slack,2.pv,3.pq),Pi,Qi,PL,QL,vmag,del,Qmin and Qmax.
//Data is taken from table 6.1
Busdata=[1  0    0  0    0    1     0  0  0
         3  0    0  8    2.8  1     0  0  0
         2  5.2  0  0.8  0.4  1.05  0  4  -2.8
         3  0    0  0    0    1     0  0  0
         3  0    0  0    0    1     0  0  0]
npv=1;             //Number of generator or PV buses in the system

rem=Busdata(:,1);
Psp=Busdata(:,2)-Busdata(:,4);
Qsp=Busdata(:,3)-Busdata(:,5);
vsp=Busdata(:,6);

//Determination of bus admittance matrix:
sb=linedata(:,1)      //Starting bus number of all the lines stored in variable sb
eb=linedata(:,2)      //Ending bus number of all the lines stored in variable eb
lz=linedata(:,3)+linedata(:,4)*%i;      //lineimpedance=R+jX
sa=linedata(:,5)*%i;  //shunt admittance=jB since conductsnce G=0 for all lines
nb=max(max(sb,eb));   //Number of buses in the system
ybus=zeros(nb,nb);
for i=1:length(sb)
    m=sb(i);
    n=eb(i);
    ybus(m,m)=ybus(m,m)+1/lz(i)+sa(i)/2;
    ybus(n,n)=ybus(n,n)+1/lz(i)+sa(i)/2;
    ybus(m,n)=-1/lz(i);
    ybus(n,m)=ybus(m,n);
end
Y=ybus;

absY=abs(Y);
thetaY=atan(imag(Y),real(Y));
v=vsp';
iteration=0;                  //Initialization of iteration count
ang=zeros(1,nb);
mismatch=ones(2*nb-2-npv,1);
tol=1e-4;                     //Tolerance value for Newton Raphson Load Flow

while max(abs(mismatch))>tol & iteration<100 //Maximum iteration count is limited to 100
    J1=zeros(nb-1,nb-1);
    J2=zeros(nb-1,nb-npv-1);
    J3=zeros(nb-npv-1,nb-1);
    J4=zeros(nb-npv-1,nb-npv-1);
    P=zeros(nb,1);
    Q=P;
    del_P=Q;
    del_Q=Q;
    del_del=zeros(nb-1,1);
    del_v=zeros(nb-1-npv,1);
    ang;
    mag=abs(v);
    for i=2:nb
        for j=1:nb
            P(i)=P(i)+mag(i)*mag(j)*absY(i,j)*cos(thetaY(i,j)-ang(i)+ang(j));
             if rem(i)~=2
                  Q(i)=Q(i)+mag(i)*mag(j)*absY(i,j)*sin(thetaY(i,j)-ang(i)+ang(j));
             end
         end
     end
//Q=-1*Q;
del_P=Psp-P;
del_Q=Qsp-Q;
for i=2:nb
    for j=2:nb
        if j~=i
            J1(i-1,j-1)=-mag(i)*mag(j)*absY(i,j)*sin(thetaY(i,j)-ang(i)+ang(j));
            J2(i-1,j-1)=mag(i)*absY(i,j)*cos(thetaY(i,j)-ang(i)+ang(j));
            J3(i-1,j-1)=-mag(i)*mag(j)*absY(i,j)*cos(thetaY(i,j)-ang(i)+ang(j));
            J4(i-1,j-1)=-mag(i)*absY(i,j)*sin(thetaY(i,j)-ang(i)+ang(j));
        end
    end
end
for i=2:nb
    for j=1:nb
        if j~=i
            J1(i-1,i-1)=J1(i-1,i-1)+mag(i)*mag(j)*absY(i,j)*sin(thetaY(i,j)-ang(i)+ang(j));
            J2(i-1,i-1)=J2(i-1,i-1)+mag(j)*absY(i,j)*cos(thetaY(i,j)-ang(i)+ang(j));
            J3(i-1,i-1)=J3(i-1,i-1)+mag(i)*mag(j)*absY(i,j)*cos(thetaY(i,j)-ang(i)+ang(j));
            J4(i-1,i-1)=J4(i-1,i-1)+mag(j)*absY(i,j)*sin(thetaY(i,j)-ang(i)+ang(j));
        end
    end
    J2(i-1,i-1)=2*mag(i)*absY(i,i)*cos(thetaY(i,i))+J2(i-1,i-1);
    J4(i-1,i-1)=-2*mag(i)*absY(i,i)*sin(thetaY(i,i))-J4(i-1,i-1);
    end
J=[J1 J2;J3 J4]                        //Entire Jacobian matrix of the system
lenJ=length(J1);
i=2;
j=1;
while j<=lenJ
    if rem(i)==2
        j=j+1;
    else
        J(:,length(J1)+j)=[];
        lenJ=lenJ-1;
    end
end
i=i+1;
lenJ=length(J1);
i=1;
j=2;
while i<=lenJ
    if rem(j)==3
        i=i+1;
    else
        J(length(J1)+i,:)=[];
        lenJ=lenJ-1;
        Q(i+1)=[]
        del_Q(i+1,:)=[]
    end
    end
P(1,:)=[]                    //Removing slack bus entries
Q(1,:)=[]
del_P(1,:)=[];
del_Q(1,:)=[];
mismatch=[del_P;del_Q];
del=J\mismatch;
del_del=del(1:nb-1);
del_v=del(nb:length(del));
ang=ang(2:nb)+del_del';         //Updating voltage angle for PV and PQ buses
j=1;
for i=2:nb                      //Step to update voltage magnitude for all PQ buses
    if rem(i)==3
        v(i)=v(i)+del_v(j);
        j=j+1;
    end
end
mag=abs(v);
ang=[0 ang];
nbr=1:nb;
iteration=iteration+1;
if iteration==1
    [r c]=size(J);
    printf('The size of the Jacobian matrix is %d X %d\n',r,c)
    printf('The change in power at the end of first iteration is DelP2=%.4f pu\n',del_P(1))
    printf('The Jacobian matrix element J1(2,4) after first iteration is: %.4f pu\n',J(1,3))
    disp(J,'The Jacobian Matrix of the system at the end of first iteration is given by:')
end
end    

