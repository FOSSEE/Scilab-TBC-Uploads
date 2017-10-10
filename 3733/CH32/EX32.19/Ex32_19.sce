// Example 32_19
clc;funcprot(0);
//Given data
L_max=5;// MW
P=7;// Plant capacity in MW

// Calculation
//(a)
t=[0 12 6];// Time in hours
x=[6 12 6];
a=[6 6 6];
b=[5 5 5];// MW
for(i=1:3)
L=(b(i)/a(i))*sqrt((2*a(i)*x(i))-((x(i))^2));
end
b=5;// MW
L_av=(%pi*b)/4;// Average load in MW
// (i)
F_l=L_av/L_max;// Load factor
E=L_av*12;// Energy used during 12-hrs period MW hr
CF=L_av/P;// Capacity factor
printf('\n(a)The average load of the factory=%0.3f MW \n   Load factor of the factory=%0.3f MW \n   Energy consumed by the factory during 12 hours=%0.1f MW-hr \n   Capacity factor=%0.3f',L_av,F_l,E,CF);
//(b)
b=5;
a=4;
t=[0 8 4];// Time in hours
for(i=1:3)
    L(i)=2+((b/a)*sqrt((2*a*t(i))-(t(i))^2));
end
L_av=(L(1)+L(2)+L(3))/3;// Average load in MW
printf('\n(b)The average load of the factory=%0.2f MW',L_av);
// The answer vary due to round off error
