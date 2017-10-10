clc;
Mo=-24;//N.m *k, Couple of moment 
f=400;//N, Magnitude of force
OB=300;//mm,Distance of force from point O
theta=60;// degree, angle made by lever with +ve X axis
theta=theta*%pi/180;// Conversion of angle into radian
// Mo=BC_ * F relation 3.7 from section 3.5
//BC_ * F=BC*f*cos(theta)------ Defination of cross product
BC=Mo/(-cos(theta)*f);//m 
BC=BC*1000;//mm, Conversion into millimeter
OC=OB+BC;//mm, Distance from the shaft to the point of application of this equivalenet force
printf("Distance from the shaft to the point of application of this equivalenet single force is %.2f mm",OC)
