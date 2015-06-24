

//exapple 1.45
clc; funcprot(0);
// Initialization of Variable
c=90-36-30/60-30/3600;//co latitude
p=90-16-12/60-18.4/3600;//co declination
z=90-30-12/60-30/3600;//co altitude
s=(p+z+c)/2;
pi=3.14159;
s1=s-c;
s2=s-p;
s3=s-z;
H=2*atan(sqrt(sin(s1*pi/180)*sin(s2*pi/180)/sin(s*pi/180)/sin(s3*pi/180)));
H=H*180/pi;
H=24-H/15;
LST=H+5+18/60+12.45/3600-24;
ce=1+2/60+5.25/3600-LST;
disp(ce*3600+2,"chronometer error in (s):")
