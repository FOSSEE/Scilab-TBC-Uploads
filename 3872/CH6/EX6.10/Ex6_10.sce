//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.10
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

linedata=[2 4 0.0090   0.10  1.72       //Entering line data from table 6.2 & 6.3
          2 5 0.0045   0.05  0.88
          4 5 0.00225  0.025 0.44
          1 5 0.00150  0.02  0.00
          3 4 0.00075  0.01  0.00];

sb=linedata(:,1)  //Starting bus number of all the lines stored in variable sb
eb=linedata(:,2)  //Ending bus number of all the lines stored in variable eb
lz=linedata(:,3)+linedata(:,4)*%i;   //lineimpedance=R+jX
sa=linedata(:,5)*%i;                 //shunt admittance=jB since conductsnce G=0 for all lines
nb=max(max(sb,eb));
ybus=zeros(nb,nb);
for i=1:length(sb)
    m=sb(i);
    n=eb(i);
    ybus(m,m)=ybus(m,m)+1/lz(i)+sa(i)/2;
    ybus(n,n)=ybus(n,n)+1/lz(i)+sa(i)/2;
    ybus(m,n)=-1/lz(i);
    ybus(n,m)=ybus(m,n);
end
y=ybus;
//enter busdata in the order type (1.slack,2.pv,3.pq),PG,QG,PL,QL,vmag,del,Qmin and Qmax.
//Data is taken from table 6.1
busdata=[1  0    0  0    0    1     0  0  0
         3  0    0  8    2.8  1     0  0  0
         2  5.2  0  0.8  0.4  1.05  0  4  -2.8
         3  0    0  0    0    1     0  0  0
         3  0    0  0    0    1     0  0  0]

typ=busdata(:,1)             // type of all buses in the power system is stored in typ variable 
qmin=busdata(:,8)            // minmum limit of Q for all the  buses is stored in the variable qmin
qmax=busdata(:,9)            // maximum limit of Q for all the buses is stored in the variable qmax
p=busdata(:,2)-busdata(:,4)  // real power of all the buses are calculated and is stored in the variable p 
q=busdata(:,3)-busdata(:,5)  // reactive power of all the buss are calculated and is stored in the variable q 
v=busdata(:,6).*(cosd(busdata(:,7))+%i*sind(busdata(:,7))); 
alpha=1;         //Acceleration factor is assumed as 1 since it is not given in the question
tol=1e-4;        //Tolerance value for Gauss Seidal Load flow
iter=0;
err=1;
vn(1)=v(1);
vold=v(1);
while abs(err)>tol 
    for i=2:nb
        sumyv=0;
        for j=1:nb
            sumyv=sumyv+y(i,j)*v(j);
        end
        if typ(i)==2
            q(i)=-imag(conj(v(i)*sumyv));
            if q(i)<qmin(i) |q(n)>qmax(i) 
                vn(i)=(1/y(i,i))*(((p(i)-%i*q(i))/(conj(v(i))))-(sumyv-y(i,i)*v(i)));
                vold(i)=v(i);
                v(i)=vn(i);
                typ(i)=3
            if q(i)<qmin(i) 
                q(i)=qmin(i);
            else
                q(i)=qmax(i);
            end
        else
            vn(i)=(1/y(i,i))*(((p(i)-%i*q(i))/(conj(v(i))))-(sumyv-y(i,i)*v(i)));
            ang=atan(imag(vn(i)),real(vn(i)));
            vn(i)=abs(v(i))*(cos(ang)+%i*sin(ang));
            vold(i)=v(i);
            v(i)=vn(i);  
        end
        elseif typ(i)==3
            vn(i)=(1/y(i,i))*(((p(i)-%i*q(i))/(conj(v(i))))-(sumyv-y(i,i)*v(i)));  
            vn(i)=(1/y(i,i))*(((p(i)-%i*q(i))/(conj(vn(i))))-(sumyv-y(i,i)*v(i))); 
            vold(i)=v(i);
            v(i)=vn(i);
        end
        end
err=max(abs(abs(v)-abs(vold)));

iter=iter+1;
for i=2:nb
    if err>tol &typ(i)==3
    v(i)=vold(i)+alpha*(v(i)-vold(i));
    end
end
if iter==1
    printf('Voltage of bus 2 at the end of first iteration in pu is given by:\n')
    printf('Voltage magnitude=%.4f , angle=%.4f degrees\n\n',abs(v(2)),atand(imag(v(2)),real(v(2))))
end
end
printf('The GS load flow converged in %d iterations \n',iter);
nn=1:nb;
res=[nn' abs(v) (atan(imag(v),real(v)))*(180/%pi)]
disp(res,'The final voltages in the order of bus no,voltage mag,voltage angle is:');
