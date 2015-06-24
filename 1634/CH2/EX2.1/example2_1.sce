

//exapple 2.1 
clc; funcprot(0);
// Initialization of Variable
pi=3.14259;
f=120.80//focal length
a=-35.52//elevation of A
b=8.48//elevation of B
c=48.26//elevation of C
alphaa=atan(a/f);
alphab=atan(b/f);
alphac=atan(c/f);
phi=(354+30/60)*pi/180;//azimuth of camera
phia=phi-alphaa-360*pi/180;//azimuth of a
disp(phia/pi*180,"azimuth of a in (degrees)");
phib=phia+alphab;//azimuth of b
disp(phib/pi*180,"azimuth of b in (degrees)");
phic=phia+alphac;//azimuth of c
disp(phic/pi*180,"azimuth of c in (degrees)");
clear
