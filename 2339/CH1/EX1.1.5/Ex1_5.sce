clc
clear

U=22;       //Internal Energy in kJ/s
P2=0.95*1000;   //Pressure in kPa
V2=0.09;        //Volume in m^3/s;
P1=0.5*1000;
V1=0.15;
X=(P2*V2)-(P1*V1);
H=U+X;

printf('Change in Enthalpy: %2.1f kJ/s',H);
