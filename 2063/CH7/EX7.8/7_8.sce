clc
clear
//Input data
P=60;//Power developed by oil engine in kW
M=6.5;//Mean effective pressure in kgf/cm^2
N=85;//Number of explosions per minute
r=1.75;//Ratio of stroke to bore diameter
nm=0.8;//Mechanical efficiency 

//Calculations
I=P/nm;//Indicated horse power
d=((I*100*4*4500)/(M*r*3.14*N))^(1/3);//Bore diameter in cm
l=r*d;//Stroke length in cm

//Output
printf('(a)Diameter of the bore is %3.2f cm \n (b)Stroke length of the piston is %3.2f cm',d,l)
