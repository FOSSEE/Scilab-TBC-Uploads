clc
clear

//Declaring Values
V=3;        //Volume in m^3
P1=2500;      //Pressure in kilobar
P2=1500;
T2=21+273;  //Temperature in Kelvin
T1=(T2*P1)/P2;
Cp=1.005;
Cv=0.718;
R=Cp-Cv;            //Universal Gas Constant
m=(P1*V)/(R*T1);        //Calculating mass
H=m*Cp*(T2-T1);
U=m*Cv*(T2-T1);
Q=U;        //Since Constant Volume Process: Work Done=0
//Displaying Results
printf('Change in Enthalpy: %5.2f kJ',H);
printf('\n');
printf('Change in Internal Energy: %5.2f kJ',U);
printf('\n');
printf('Heat Transfer: %4.2f kJ',Q);
printf('\n')
printf('As Answer is negative, system rejects heat');
