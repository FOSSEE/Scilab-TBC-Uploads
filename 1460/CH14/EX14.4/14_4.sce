clc
//initialization of variables
t=0.25 //in
dia=5.5 //in
t2=0.6 //in
To=100 //F
kp=34.5 //B/hr-ft-F
ki=0.05 //B/hr-ft-F
l=10 //ft
Q=2000 //B/hr
//calculations
dT=Q*(1/kp *log(1+ 2*t/dia) + 1/ki *log(1 + 4*t/(dia+2*t)))/(2*%pi*l)
T1=dT+To
//results
printf("Inner surface temperature of the pipe = %.1f",T1)
