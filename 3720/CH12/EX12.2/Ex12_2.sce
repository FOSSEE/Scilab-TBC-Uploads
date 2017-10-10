//Example 12_2
clc;clear;funcprot(0);
// Given values
V=200;// Velocity in m/s
T=303;// Temperature in K
//Properties
k=1.4;// The specific heat ratio
R=0.287;//The gas constant of air in kJ/(kg.K)

//Calculation
//(a)
c=sqrt(k*R*T*1000);//The speed of sound in air at 30°C in m/s
printf('(a)The speed of sound in air at 30°C ,c=%0.0f m/s\n',c);
//(b)
Ma=V/c;
printf('(b)The Mach number ,Ma=%0.3f \n',Ma);
