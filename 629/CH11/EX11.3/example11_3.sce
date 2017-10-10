clear
clc
//Example 11.3 SPEED OF A BICYCLE RIDER
m=70; //mass[Kg]
g=9.81; //[m/s^2]
Cr=0.007; //coefficient of rolling resistance
//Rolling resistance
Fr=Cr*m*g //[N]
Cd=0.88;
A=0.362; //[m^2]
rho=1.2; //density [Kg/m^3]
P=300; //power supply [W]
//Drag force, Fd=Cd*A*rho*Vo^2/2, Vo=Vc+3 
//P=(Fd+Fr)*Vc
q=[Cd*A*rho/2 3*Cd*A*rho (9*Cd*A*rho/2)+Fr -P]; //cubic polynomial in Vc
R=roots(q); //roots of poly.q
//R(3), real root of q
Vc=R(3) //speed of cyclist [m/s]
//1m/s=3600/(1.61*1000)mph
printf("\nThe speed of the cyclist, Vc = %.2f m/s(= %.1f mph).\n",Vc,Vc*2.236)