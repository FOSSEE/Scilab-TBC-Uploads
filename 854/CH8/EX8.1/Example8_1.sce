//clear//
//Caption: Program to find the magnetic field intensity of a current carrying filament
//Example8.1
//page 217
clc;
I = 8; //current in amps
alpha1x = -90/57.3; // phase angle along with x-axis
x = 0.4;
y = 0.3;
z =0;
alpha2x = atan(x/y);
aphi = sym('aphi');
az = sym('az');
rx = y; // distance in metres in cynlindrical coordiante system
H2x = float((I/(4*%pi*rx))*(sin(alpha2x)-sin(alpha1x)))*-az;
disp(H2x,'H2x = ')
alpha1y = -atan(y/x);
alpha2y = 90/57.3;
ry = 0.4;
H2y = float((I/(4*%pi*ry))*(sin(alpha2y)-sin(alpha1y)))*-az;
disp(H2y,'H2y =')
H2 = H2x+H2y;
disp(H2,'H2 =')
//Result
//H2x =  -3.819718617079289*az   
//H2y =   -2.546479080730701*az   
//H2 =     -6.36619769780999*az 
