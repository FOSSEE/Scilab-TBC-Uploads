clc
clear
//Input data
m=1;//Mass of air to be compressed in kg
P1=1;//Pressure of air before compression in bar
T1=303;//Initial temperature in K
P3=25;//Final pressure of air after compression in bar
n=1.3;//Polytropic index
R=287;//Gas constant in J/kg K

//Calculations
P2=(P1*P3)^(0.5);//Intermediate pressure in the case of perfect intercooling in bar
W=2*(n/(n-1))*(m*R*T1*(((P2/P1)^((n-1)/n))-1));//Work done in compression in a two stage compressor per unit volume per kg of air in N m

//Output data
printf('Minimum work required to compress 1kg of air for given conditions is %3.0f N m',W)
