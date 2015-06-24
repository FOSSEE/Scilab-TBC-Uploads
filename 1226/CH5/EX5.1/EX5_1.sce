clc;funcprot(0);//EXAMPLE 5.1
// Initialisation of Variables
d=10.2;............//Engine bore in cm
spo=0.6;............//Spark plug offset in cm
vf=15.8;............//Average flame speed in m/s
thetas=20;.............//The angle of the crank when spark plug is fired
theta=6.5;..........//Angle by which the Engine rotates for combustion to develop (degree)
N=1200;................//Engine rpm
//calculations
dmax=(0.5*d)+spo;.........//Max distance of flame travel in cm
tf=(dmax)/(vf*100);................//Time of flame travel in seconds
degs=(N/60)*360;...................//Conversion of engine rpm into degree/second
ctheta=tf*degs;...............//Crank angle for flame travel in degree
tc=theta/degs;..................//time for combustion to develop in seconds
top=tf+tc;......................//Time for one combustion process in seconds
thetatot=theta+ctheta;................//Total crank rotation in degree
thetacp = thetatot-thetas;..........//Crank position
disp(top,"Time for one combustion process in seconds:")
disp(thetacp,"The crank position is (in degree):")
