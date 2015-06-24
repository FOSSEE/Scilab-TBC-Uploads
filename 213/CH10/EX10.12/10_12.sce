//To find length of lever
clc
//Given:
W=10*1000,P1=100 //N
p=12,d=50 //mm
mu=0.15
//Solution:
//Calculating the helix angle
alpha=atan(p/(%pi*d)) //radians
//Calculating the effort required at the circumference of the screw to raise the load
phi=atan(mu) //Limiting angle of friction, radians
P=W*tan(alpha+phi) //N
//Calculating the torque required to overcome friction
T=P*d/2 //N-mm
//Calculating the length of the lever
l=T/P1 //mm
//Calculating the mechanical advantage
MA=W/P1
//Calculating the efficiency of the screw jack
eta=tan(alpha)/tan(alpha+phi)*100 //%
//Results:
printf("\n\n The length of the lever to be used, l = %.1f mm.\n",l)
printf(" Mechanical advantage obtained, M.A. = %d.\n",MA)
if eta<50 then
    printf(" The screw is a self locking screw.\n\n");
else
    printf(" The screw is not a self locking screw.");
end