//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-11 ;Example 11.8
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;
linedata=[2 4 0.0090   0.10  1.72       //Entering line data from table 6.2 & 6.3 of example 6.9
          2 5 0.0045   0.05  0.88
          4 5 0.00225  0.025 0.44
          1 5 0.00150  0.02  0.00
          3 4 0.00075  0.01  0.00];       
sb= linedata(:,1);
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
Pl3=0.8;Ql3=0.4; Pl2=8; Ql2=2.8;     //Data taken from table 6.1
V3=1.05;V2=0.959;
Qc=184;                              //Capacity of shunt capacitor in kVAR.
xd1dash=0.05;
xd2dash=0.025;
Yl3=(Pl3-%i*Ql3)/V3^2;
Yl2=(Pl2-%i*(Ql2-Qc/100))/V2^2;
Yd1=1/(%i*xd1dash);          //The inverted generator impedances for machine 1 connected to bus 1
Yd2=1/(%i*xd2dash);          //The inverted generator impedances for machine 2 connected to bus 3

//Updation of bus admittance matrix
Y11=ybus;
Y11(1,1)=Y11(1,1)+Yd1;
Y11(2,2)=Y11(2,2)+Yl2;
Y11(3,3)=Y11(3,3)+Yl3+Yd2;
disp(Y11,'The 5 x 5 matrix Y11 in per unit is given by:')
Y22=[Yd1 0;0 Yd2];
disp(Y22,'The 2 x 2 matrix Y22 in per unit is given by:')
Y12=[Yd1 0;0 0;0 Yd2;0 0;0 0];
disp(Y12,'The 5 x 2 matrix Y12 in per unit is given by:')
