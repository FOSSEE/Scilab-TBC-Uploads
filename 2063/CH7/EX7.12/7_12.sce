clc
clear
//Input data
d=0.15;//Diameter of the piston in m
l=0.19;//Length of the stroke in m
V=0.00091;//Clearance volume in m^3
N=250;//Speed of the engine in rpm
M=6.5;//Indicated mean effective pressure in bar
c=6.3;//Gas consumption in m^3/hr
H=16000;//Calorific value of the has in kJ/m^3
r1=1.4;//Polytropic index

//Calculations
Vs=(3.14*d^2*l)/4;//Swept volume in m^3
Vt=Vs+V;//Total cylinder volume in m^3
r=Vt/V;//Compression ratio
na=(1-(1/r^(r1-1)))*100;//Air standard efficiency in percent
A=(3.14*d^2)/4;//Area of the bore in m
I=(M*10^5*l*A*N)/(1000*60);//Indicated power in kW
Hs=(c*H)/(60*60);//Heat supplied per second
nt=(I/Hs)*100;//Indicated thermal efficiency in percent

//Output
printf('(a)The air standard efficiency is %3.1f percent\n (b)Indicated power is %3.3f kW\n (c)Indicated thermal efficiency is %3.1f percent',na,I,nt)
