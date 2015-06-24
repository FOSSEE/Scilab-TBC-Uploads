clc
clear
//Input data
A=450;//Area of indicator diagram in mm^2
l=60;//Length of indicator diagram in mm
s=1.1;//Spring number in bar/mm
d=0.1;//Diameter of piston in m
L=0.13;//Length of stroke in m
N=400;//Operating speed of the engine in rpm

//Calculations
Av=A/l;//Average height of indicator diagram in mm
pm=Av*s;//Mean effective pressure in bar
np=N/2;//Number of power strokes per minute for a four stroke diesel engine
Ar=(3.14*d^2)/4;//Area of the piston in m^2
I=(pm*10^5*L*Ar*np)/(1000*60);//Indicated power in kW

//Output
printf('(a)The indicated mean effective pressure is %3.2f bar\n (b)Indicated power is %3.2f kW',pm,I)
