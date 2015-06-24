

//exapple 1.13 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
alpha=21+30/60;//altitude of star
A=140//azimuth angle
delta=48;//latitude of observer
//in triangle ZPM(figure in book)
PZ=(90-delta)*pi/180;
A=A*pi/180;
ZM=(90-alpha)*pi/180;
PM=(cos(PZ)*cos(ZM)+sin(ZM)*sin(PZ)*cos(A));
if PM<0 then
    PM=-PM;
    PM=acos(PM);
    PM=180-PM*180/pi;
    disp(PM-90,"declination of star in (degrees) southwards:");
end

H=acos((cos(ZM)-cos(PZ)*cos(PM*pi/180))/sin(PZ)/sin(PM*pi/180));
H=2*pi-H;
disp(H*180/pi,"hour angle of star in (degrees)");
