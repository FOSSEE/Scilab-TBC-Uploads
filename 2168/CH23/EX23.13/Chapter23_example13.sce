clc
clear
//Input data
n=4//Number of cylinders
r=1//Radius in metre
N=1400//Speed in r.p.m
bl=14.5//Net brake load in kg
P=[9.8,10.1,10.3,10]//Loads on the brake in kg
d=9//Bore in cm
l=12//Stroke in cm

//Calculations
bhp=(bl*2*3.14*r*N)/4500//Brake horse power in h.p
bhp1=(P(1)*2*3.14*r*N)/4500//Brake horse power in h.p
bhp2=(P(2)*2*3.14*r*N)/4500//Brake horse power in h.p
bhp3=(P(3)*2*3.14*r*N)/4500//Brake horse power in h.p
bhp4=(P(4)*2*3.14*r*N)/4500//Brake horse power in h.p
ihp1=bhp-bhp1//Indicated horse power in h.p
ihp2=bhp-bhp2//Indicated horse power in h.p
ihp3=bhp-bhp3//Indicated horse power in h.p
ihp4=bhp-bhp4//Indicated horse power in h.p
ihp=(ihp1+ihp2+ihp3+ihp4)//Indicated horse power in h.p
nm=(bhp/ihp)*100//Mechanical efficiency in percent
pm=((4500*bhp)/((l/100)*(3.14/4)*d^2*(N/2)))//Brake mean effective pressure in kg/cm^2

//Output
printf('I.H.P is %3.1f h.p \n Mechanical efficiency is %3.1f percent \n Brake mean effective pressure is %3.0f kg/cm^2',ihp,nm,pm)
