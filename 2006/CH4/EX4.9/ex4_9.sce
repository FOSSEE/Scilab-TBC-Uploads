clc;
D=152; // Bore of steam engine in mm
l=89; // Stroke length of steam engine in mm
a1=8;a2=10; // area of indicatior diagram on two sides
Ks=50; // Indicator spring constant in lbf/in^2/in
N=310; // Engine speed in rpm
d=0.664; // Diameter of flywheel in m
// (a)
a=(a1+a2)/2; // Average area of indicator diagram
Ks=50*4.44822/(0.0254)^3; // Unit conversion from lbf/in^2/in to N/m^2
pm=(a/(l/10))*10^-2*Ks; // Mean effective pressure 
A=(%pi*(D*10^-3)^2)/4; // Area of the piston
IP=2*pm*l*10^-3*A*N/60; // Indicated power
disp ("kW",IP/1000,"Indicated power of Engine =","(a)");
// (b)
F=12-1.5; // Tangential force on the brake drum in kgf
BP=F*9.81*d/2*2*%pi*N/60; // Brake power of Engine
eff=BP/IP *100 ; // Mechanical efficiency 
disp ("kW",BP/1000,"Brake power of Engine = ","(b)");
disp ("%",eff,"Mechanical efficiency of Engine =");
