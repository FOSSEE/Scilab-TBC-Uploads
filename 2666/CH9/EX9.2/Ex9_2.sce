

clc
//initialisation of variables
p=2//if
p1=100//percent
p2=30//lb
p3=50//lb
t=580//F
t1=501//R
w=510//in
q=0.24//in
v=1020//ft per sec
v1=1071//ft per sec
//CALCULATIONS
N=(v/v1)^2*100//percent
E=(q*(t-w))/(q*(t-t1))*100//percent
//RESULTS
printf('The efficient from the true condition Nozzle efficient=% f percent',E)
