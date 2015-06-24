clc
clear
//Input data
m=2;//Mass of air delivered per second in kg
P1=1;//Initial pressure of a single stage compressor in bar
T1=293;//Initial temperature in K
P2=7;//Final pressure in bar
n=1.4;//Polytropic index
R=287;//Gas constant in J/kg K

//Calculations
W=((n/(n-1))*m*R*T1*(((P2/P1)^((n-1)/n))-1))/(60*1000);//Work done by compressor in kW

//Output
printf('Power required to compress and deliver 2kg of air per minute is %3.3f kW',W)
