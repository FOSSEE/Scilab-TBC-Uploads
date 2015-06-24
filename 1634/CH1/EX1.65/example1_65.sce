

//exapple 1.65
clc; funcprot(0);
// Initialization of Variable
longP=120-4-20/60;//longitude of point
delT=longP/15;
GST=8+30/60+20/3600;//GST on GMM
i=delT*9.8565/3600;//error in time
pi=3.1415;
lst=GST+i;//LST on LMM
LST=19+52/60+16/3600;
RA=LST;
LMN=LST-lst;
i2=LMN*9.8565/3600;//error in LMN
LMN=LMN-i2;
OSM=10+55/60+30/3600;//Observed mean time
i3=1/60+25/3600;//error in observed time
OSM=OSM-i3;
LMT=OSM+4/15+21/60/15;
I=LMN-LMT;//interval
i4=1.21/3600;//error in interval
I=I+i4;
H=I;//hour angle
delta=6+15/60+02/3600;//deflection
alpha=39+20/60+30/3600;//altitude
theta=56+54/60+30/3600;//longitude
B=cos(delta*pi/180)*cos(theta*pi/180)/cos(alpha*pi/180);
m=225*H^2*3600^2/2/206265;
lat=alpha+m*B/3600;
lat=90-lat+6+15/60+02/3600;
disp(B,"latitude of star observed:");
a=modulo(lat*3600,60);
printf("seconds %.2f",a);
b=modulo(lat*3600-a,3600)/60;
printf("  minutes %i",b);
c=(lat*3600-b*60-a)/3600;
printf("  degrees %i",c);

