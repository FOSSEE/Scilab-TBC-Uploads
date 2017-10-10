//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.17
//Scilab Version - 6.0.0 ; OS - Windows

clear;
clc;

linedata=[2 4 0.0090   0.10  1.72       //Entering line data from table 6.2 & 6.3
          2 5 0.0045   0.05  0.88
          4 5 0.00225  0.025 0.44
          1 5 0.00150  0.02  0.00
          3 4 0.00075  0.01  0.00];
linedata(:,3)=0                         //Neglecting Line resistance
linedata(:,5)=0                         //Neglecting shunt suceptance
//enter busdata in the order type (1.slack,2.pv,3.pq),PG,QG,PL,QL,vmag,del,Qmin and Qmax.
//Data is taken from table 6.1
Busdata=[1  0    0  0    0    1     0  0  0
         3  0    0  8    2.8  1     0  0  0
         2  5.2  0  0.8  0.4  1.05  0  4  -2.8
         3  0    0  0    0    1     0  0  0
         3  0    0  0    0    1     0  0  0]
          
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

B=imag(ybus(2:nb,2:nb))              //B matrix is the imaginary part of bus admittance matrix neglecting slack bus
P=Busdata(2:nb,2)-Busdata(2:nb,4)    //Net power at each PV and PQ bus
delta=-inv(B)*P
deltad=delta*180/(%pi)               //Converting delta from radian to degree
disp(B, 'The B Matrix is given by:')
disp(P,'The P Matrix is given by:')
disp(deltad,'The values of delta in degrees is given by:')
