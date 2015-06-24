clc
clear
//Input data
P1=1;//Initial pressure of a 3 stage compressor in bar
P4=40;//Final pressure in bar
T1=293;//Initial temperature in K
n=1.3;//Polytropic index
V1=15;//Air delivered per minute in m^3/min

//Calculations
W=((3*n)/(n-1))*P1*10^5*V1*(((P4/P1)^((n-1)/(3*n)))-1);//Work done by the compressor in kJ/min
P=W/(60*1000);//Power required to deliver 15 m^3/min air in kW
P2=P1*(P4/P1)^(1/3);//Intermediate pressure after stage 1 in bar
P3=P2*(P4/P1)^(1/3);//Intermediate pressure after stage 2 in bar

//Output
printf('(a)Power required to deliver 15 m^3/min air at suction condition is %3.1f kW\n (b)Intermediate pressures are P2 = %3.3f bar P3 = %3.3f bar',P,P2,P3)
