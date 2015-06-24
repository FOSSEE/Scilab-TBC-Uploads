//Example 6.4, page 131
clc
R1=.15//in ohm
Rs=.45//in ohm
x1=.6//in ohm
xz=1.8//in ohm
sf=.05
Turn=1/sqrt(3)
R_rotor=Rs*Turn//in ohm
X_rotor=xz*Turn^2//in ohm

//Part 1
//BY FIGURE
E1=sqrt((3^2+.6^2)/(3.15^2+1.2^2))*440/sqrt(3)
//disp(E1)
s=1-sf
I2=E1/sqrt(x1**2+2**2)
//disp(I2)
R2=2*60//ohm
w=2*%pi*600
T=(R2*3*(I2^2))/(s*w)
//disp(T)
printf("Initial braking torque of rheostatic is %f N-m",T)

//Part 2
s1=2-sf
a=.15+(1.9/1.95)**2
b=1.2**2
I2=(440/sqrt(3))*(1/sqrt(a+b))
//disp(I2)
T=(60*1.9*3*(I2^2))/(1.95*w)
//disp(T)
printf("\n Initial braking torque during reverse is %f N-m",T)