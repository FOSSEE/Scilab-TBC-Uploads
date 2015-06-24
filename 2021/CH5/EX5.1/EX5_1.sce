//Finding of velocity and discharge
//Given
d1=0.4;
r1=d1/2;
d2=0.2;
r2=d2/2;
v1=5;
pi=3.14;
//To Find
a1=(pi*r1^2);
a2=(pi*r2^2);
v2=(a1*v1)/a2;
q2=a2*v2;
disp("Velocity at section -2 ="+string(v2)+" m/second");
disp("Discharge ="+string(q2)+"m^3/seconds");
