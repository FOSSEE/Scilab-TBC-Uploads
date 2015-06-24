clc;
//page 113
Mo=24;//N.m *k, Couple of moment 
f=-400;//N, Magnitude of force
OB=300;//mm,Distance of force from point O
theta=60;// degree, angle made by lever with +ve X axis
x=cosd(theta)
BC=Mo/(-f*x);//m 
BC=BC*1000;//mm, Conversion into millimeter
disp(BC)
OC=OB+BC;//mm, Distance from the shaft to the point of application of this equivalenet force

printf("Distance from the shaft to the point of application of this equivalenet single force is %f mm",OC)
