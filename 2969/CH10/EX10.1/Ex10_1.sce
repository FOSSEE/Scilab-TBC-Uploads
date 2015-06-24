clc
clear
//DATA GIVEN
V1=1;                           //volume of air taken in m^3/mim
p1=1.013;                       //intake pressure in bar
T1=15+273;                      //intake temperature in K
p2=7;                           //delivery pressure in bar
t=1*60;                         //time in seconds
//law of compression, pV^1.35=C
n=1.35; 
R=287;

m=p1*10^5*V1/R/T1;              //mass of air delivered in kg/min

//(T2/T1)=(p2/p1)^((n-1)/n);
T2=T1*(p2/p1)^((n-1)/n);        //delivery temp. T2 in K

W=(n)/(n-1)*m*R*(T2-T1)/1000;   //indicated work in kJ/min

IP=W/t;                         //indicated power in kW

printf(' The Indicated power, IP is: %1.2f kW. \n',IP);
