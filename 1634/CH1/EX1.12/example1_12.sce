

//exapple 1.12 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
alpha=22+36/60;//altitude of star
A=42//azimuth angle
delta=40;//latitude of observer
//in triangle ZPM(figure in book)
PZ=(90-delta)*pi/180;
A=A*pi/180;
ZM=(90-alpha)*pi/180;
PM=acos((cos(PZ)*cos(ZM)+sin(ZM)*sin(PZ)*cos(A)));
theta=pi/2-PM;
disp(theta*180/pi,"declination of star in (degrees) north:");
H=((cos(ZM)-cos(PZ)*cos(PM))/sin(PZ)/sin(PM));
if H<0 then
    H=-H;
    H=acos(H);
    H=180-H*180/pi;
    disp(H,"hour angle  of star in (degrees) eastwards:")
end
