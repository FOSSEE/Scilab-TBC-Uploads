//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.8
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

linedata=[2 4 0.0090   0.10  1.72       //Entering line data from table 6.2 & 6.3
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
disp(ybus(2,:),'The second row elements of Bus Admittance matrix are:')
disp(ybus,'The Bus Admittance matrix is:')
