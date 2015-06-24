
//e=100*sin(100*%pi*t)
//calculating rate of change of voltage at t=.0025 sec
t=.0025
r1=10000*%pi*cos(100*%pi*t)
mprintf("Rate of change of voltage at .0025 sec=%f V/sec\n",r1)
//calculating rate of change of voltage at t=.005 sec
t=.005
r2=10000*%pi*cos(100*%pi*t)
mprintf("Rate of change of voltage at .005 sec=%d V/sec\n",r2)
//calculating rate of change of voltage at t=.01 sec
t=.01
r3=10000*%pi*cos(100*%pi*t)
mprintf("Rate of change of voltage at .01 sec=%f V/sec\n",r3)
//error in textbook answer in first and last case
