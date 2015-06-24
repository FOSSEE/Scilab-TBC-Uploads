

//exapple 1.46
clc; funcprot(0);
// Initialization of Variable
c=90-36-40/60-30/3600;//co latitude
p=90-17-26/60-42.1/3600;//co declination
z=90-36-14/60-16.8/3600;//co altitude
pi=3.14159;
s=(p+z+c)/2;
s1=s-c;
s2=s-p;
s3=s-z;
H=2*atan(sqrt(sin(s1*pi/180)*sin(s2*pi/180)/sin(s*pi/180)/sin(s3*pi/180)));
H=H*180/pi;
H=H/15;
i=12-11-56/60-22.8/3600;//error in time
LAT=15+49/60+40.6/3600;//local actual time
GAT=LAT-H;
GMT=GAT-i;
LMT=GMT+H;
ce=15+49/60+12.6/3600-LMT;
disp(ce*3600,"chronometer error in (s):")

