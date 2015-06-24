//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 22


clear;
clc;


//Given:
//All Ki values are obtained from Fig. 13.6 0f Chemical Engineer's Handbook, 5th ed.
P = 1447.14; //pressure of the system (kPa)
x = [0.25 0.4 0.35]; //composition of the components
T = [355.4 366.5]; //assumed temperatures (K)
K1 = [2.00 0.78 0.33]; //value of Ki at 355.4 K 
K2 = [2.30 0.90 0.40]; //value of Ki at 366.5 K

//To calculate bubble and dew point temperatures
//(a). The bubble point temperature and composition of the vapour

//At bubble point temperature, sum(K*x) = 1
Kx = [0 0];
for i =1:3
    Kx(1) = Kx(1)+K1(i)*x(i);
    Kx(2) = Kx(2)+K2(i)*x(i);
end
Tb = interpln([Kx;T],1);

//At Tb K, from Fig. 13.6 of Chemical Engineer's Handbook
Kb = [2.12 0.85 0.37]

//Calculation of vapour composition
y1 = Kb(1)*x(1)*100;
y2 = Kb(2)*x(2)*100;
y3 = Kb(3)*x(3)*100;

mprintf('(a).');
mprintf('\n The bubble point temperature is %f K',Tb);
mprintf('\n At bubble point vapour contains %f percent propane, %f percent butane and %f percent pentane',y1,y2,y3);

//(b). The dew point temperature and composition of the liquid
T = [377.6 388.8]; //assumed temperatures (K)
y = [0.25 0.40 0.35]; //vapour composition at dew point
K1 = [2.6 1.1 0.5]; //at 377.6 K
K2 = [2.9 1.3 0.61]; //at 388.8 K

//At dew point, sum(yi/Ki) = 1
Ky = [0 0];
for i = 1:3
    Ky(1) = Ky(1) + y(i)/K1(i);
    Ky(2) = Ky(2) + y(i)/K2(i);
end
Td = interpln([Ky;T],1);

//At Td K,
Kd = [2.85 1.25 0.59];

//Calculation of liquid composition
x1 = y(1)*100/Kd(1);
x2 = y(2)*100/Kd(2);
x3 = y(3)*100/Kd(3);

mprintf('\n\n (b).');
mprintf('\n The dew point temperature is %f K',Td);
mprintf('\n Liquid at dew point contains %f percent propane, %f percent butane and %f percent pentane',x1,x2,x3);

//(c). Temperature and composition when 45% of initial mixture is vaporised
//Basis: 
F = 100; V = 45; L = 55;

//For the given condition eq. 8.91 (Page no. 364) is to be satisfied
//sum(zi/(1+ L/(VKi))) = 0.45

z = [0.25 0.4 0.35];
T = [366.5 377.6]; //assumed temperatures
K1 = [2.3 0.9 0.4]; //at 366.5 K
K2 = [2.6 1.1 0.5]; //at 377.6 K

Kz = [0 0];
for i =1:3
    Kz(1) = Kz(1) + z(i)/(1 + L/(V*K1(i)));
    Kz(2) = Kz(2) + z(i)/(1 + L/(V*K2(i)));
end

//The required temperature is T3
T3 = interpln([Kz;T],0.45);

//At T3 K
K3 = [2.5 1.08 0.48];

//Calculating liquid and vapour compositions
for i = 1:3
    y(i) = (z(i)/(1 + L/(V*K3(i))))/0.45;
    x(i) = ((F*z(i)) - (V*y(i)))/L;
    disp(x(i));
end

mprintf('\n\n (c).');
mprintf('\n The equilibrium temperature is %f K',T3);
mprintf('\n Liquid composition in equilibrium is %f percent propane, %f percent butane and %f percent pentane',x(1)*100,x(2)*100,x(3)*100);
mprintf('\n Vapour composition in equilibrium is %f percent propane, %f percent butane and %f percent pentane',y(1)*100,y(2)*100,y(3)*100);

//end