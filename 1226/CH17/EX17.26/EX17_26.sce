clc;funcprot(0);//EXAMPLE 17.26
// Initialisation of Variables
n=1.3;...................//Index of compression
pa=1.4;pb=3.6;posa=(1/4);..........//Point a - the position 1/4 of the stroke
posb=(3/4);..........//Point b - the position 3/4 of the stroke
ga=1.4;...............//Degree of freedom for gas
etarel=0.4;...................//Relative efficiency
C=18800;....................//Calorific value of fuel in kJ/m^3
//Calculations
r=1+((((pb/pa)^(1/n))-1)/(posb-(((pb/pa)^(1/n))*(posa))));.........//Compression ratio
disp(r,"The compression ratio :")
etast=1-(1/r^(ga-1));............//Air standard efficiency 
etath=etarel*etast;............//Thermal efficiency
disp(etath*100,"Thermal efficiency (in %):")
v=1/(etath*C);...............//Gas consumption per IP sec
disp(v*3600,"Gas consumption (in m^3/IP hour):")
