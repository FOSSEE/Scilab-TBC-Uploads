
//To determine the size and length of the wire
//Page 282
clc;
clear;

r=poly(0,'r'); //Variable Value of radius
A=%pi*(r^2); //Area of cross section of the wire
V=220; //Supply Voltage
P=20*(10^3); //Power input
//Temperatures
T1=1127; //Wire
T2=427; //Charge

R=(V^2)/P; //Resistance of the wire
e=0.9; //emissivity constant
K=0.6; //Radiation Effciency

p=1.09*(10^-6); //Resistivity

l=R*A/p; //Length in term of 'r'

H=5.72*e*K*((((T1+273)/100)^4)-(((T2+273)/100)^4)); //Heat dissipated per sq.m of the surface
CSA=%pi*2*r*l; //Curved surface area

CSAn=P/H; //Numerical Value of Curved suraface area

X=CSA-CSAn; //Polynomial to find 'r'

disp(X);
printf('The real roots of the above equation gives the value of the radius\n')
r=roots(X); //Numerical Value of radius
disp(r);
printf('Choosing the real roots from the list above\n')
r=r(3);
l=CSAn/(2*%pi*r); //Numerical Value of length

//For charge temperature to be cold
Ti=25; //Cold Temperature
T=poly(0,'T'); //Variable value of the element temperature
Hi=5.72*e*K*((((T+273)/100)^4)-(((Ti+273)/100)^4)); //Heat dissipated per sq.m of the surface
CSA=%pi*2*r*l; //Curved surface area
Y=Hi-H; //polynomial to find the temperature of the element

//Roots of T must be real
T=roots(Y); //Numerical Value
disp(Y);
printf('The real roots of the above equation gives the value of the element temperature\n')
disp(T);
printf('Choosing the real roots from the list above\n')
T=T(4); 

printf('\n\nThe length and radius of the wire element are %g m and %g mm respectively\n',l,(r*1000))
printf('The Temperature of the element when the charge is cold is %g degree celsius\n',T)
