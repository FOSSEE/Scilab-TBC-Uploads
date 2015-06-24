
clc
clear
//Input data
H=15;//The high of downcomer riser circuit in m
P=160;//The pressure at which downcomer riser circuit operates in bar
xe=0.5;//The exit quality of the steam 
S=1.2;//Slip factor
vf=0.001711;//Specific volume of saturated liquid in m^3/kg
vg=0.009306;//Specific volume of saturated gas in m^3/kg
g=9.806;//Gravitational force constant in m/s^2

//Calculations
C=S*(vf/vg);//The part of calculation for the void fraction 
VF=1/[1+((1-xe)*C)/xe];//The void fraction at riser exit
pf=1/vf;//Density of the saturated liquid in kg/m^3
pg=1/vg;//Density of the saturated gas in kg/m^3
pm=pf-[[(pf-pg)/(1-C)]*[1-{(1/((VF)*(1-C)))-1}*log(1/(1-(VF*(1-C))))]];//The average mixture density in the riser in kg/m^3
P1=g*(pf-pm)*H;//Pressure head developed due to natural circulation in N/m^2
P2=P1/1000;//ressure head developed due to natural circulation in kPa

//Output 
printf('The pressure head developed due to natural circulation is %3.0f N/m^2  or  %3.3f kPa',P1,P2)
