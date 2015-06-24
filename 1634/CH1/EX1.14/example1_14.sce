

//exapple 1.14 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
//part1
delta=22+12/60;
theta=42+30/60;
ZP=(90-theta)*pi/180;
PM=(90-delta)*pi/180;
A=acos(cos(PM)/sin(ZP));
disp(A*180/pi,"azimuth of setting sun in (degrees):");
H=180-acos(tan(pi/2-ZP)*tan(pi/2-PM))*180/pi;
disp(H,"suns hour angle in (degrees):");
//part2
delta=-22-12/60;
theta=42+30/60;
ZP=(90-theta)*pi/180;
PM=(180-90-delta)*pi/180;
A=acos(cos(PM)/sin(ZP));
disp(A*180/pi,"azimuth of setting sun in (degrees):");
H=pi-acos(tan(pi/2-ZP)*tan(pi/2-PM));
disp(H*180/pi,"suns hour angle in (degrees):");
