clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=1;
P1=10;
T1=337+273;
P2=1;
V=6;
R=0.287;
G=1.4;
x=log(P2/P1);
y=log(1/V);
n=x/y;
printf('The Value of n: %3.3f ',n);
printf('\n');
V1=(m*R*T1)/(P1*100);
V2=V1*6;
W=((P1*100*V1)-(P2*100*V2))/(n-1);
printf('The Work Done: %3.1f kJ',W);
printf('\n');
Q=((G-n)/(G-1))*W;
printf('The Heat Transfer: %3.2f kJ',Q);
printf('\n');
