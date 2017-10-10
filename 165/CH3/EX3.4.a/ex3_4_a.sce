//Example 3.4(a)
clc;
Rm=100;                //Internal resistance
Im=50*10^-6;           //Full Scale deflection current
a=[1,1,1,1; 195, 195, 195, -1; 995, 995, -1, -1; 1995, -1, -1, -1];
b=[5.26; 100; 100; 100];
X=a\b;

//Case I: For Range 0-1 mA
printf('\nAryton Shunt for range 0-1 mA = %.4f ohm\n',X(1,1))

//Case I: For Range 0-10 mA
printf('\nAryton Shunt for range 0-10 mA = %.4f ohm\n',X(2,1))

//Case I: For Range 0-50 mA
printf('\nAryton Shunt for range 0-50 mA = %.4f ohm\n',X(3,1))

//Case I: For Range 0-100 mA
printf('\nAryton Shunt for range 0-100 mA = %.4f ohm\n',X(4,1))