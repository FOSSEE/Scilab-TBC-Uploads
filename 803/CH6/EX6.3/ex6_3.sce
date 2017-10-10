clc
f=12*(10^6);..........................//Assigning values to parameters
c=3*(10^8);
Vt=85*(10^3);
alphag=7.6;
fc=5.6*(10^6);
y=6377;
ro=6527*(10^3);
x=15;................................//orientation of target velocity
ho=150;
n=sqrt(1-((fc^2)/f^2));
b=acosd(y*cosd(alphag)/(n*(ro+ho)));
delf=((-2*f*Vt*sind(x)*b)/c)
disp(n,"Refractive index");
disp(b,"a");
disp("Hz",delf,"The doppler frequency error is");
