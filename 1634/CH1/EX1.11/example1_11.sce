

//exapple 1.11 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
theta=-8-30/60;
H=322;//hour angle
delta=50;
//in triangle ZPM(figure in book)
PZ=(90-delta)*pi/180;
H=2*pi-H*pi/180;
PM=(90-theta)*pi/180;
ZM=acos((cos(PZ)*cos(PM)+sin(PM)*sin(PZ)*cos(H)));
alpha=pi/2-ZM;
disp(alpha*180/pi,"altitude of star in (degrees):");
A=((cos(PM)-cos(PZ)*cos(ZM))/sin(PZ)/sin(ZM));
if A<0 then
    A=-A;
    A=acos(A);
    A=180-A*180/pi;
    disp(A,"azimuth of star in (degrees) eastwards:")
end

