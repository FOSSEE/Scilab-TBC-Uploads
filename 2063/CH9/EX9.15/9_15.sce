clc
clear
//Input data
V1=3;//Volume of air sucked in by a two stage compressor in m^3
P1=1.04;//Initial pressure in bar
T1=298;//Initial temperature in K
P2=9;//Delivery pressure in bar
n=1.25;//Polytropic index

//Calculations
P2=(P1*P2)^(0.5);//Intermediate pressure for perfect intercooling and for minimum work of compression in bar
W=2*(n/(n-1))*(P1*10^5*V1*(((P2/P1)^((n-1)/n))-1));//Work done in compression in a two stage compressor per unit volume per kg of air in Nm
P=W/(60*1000);//Power required to drive the compressor in kW

//Output
printf('The minimum power required to drive the compressor is %3.3f kW',P)
