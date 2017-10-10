clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.5.1\n')
//given data
X=0.015//amplitude of vibration of spring mass dashpot system in m
f=100//frquency  of vibration of spring mass dashpot system in Hz
zeta=0.05
fnD=22//damped natural frequency in Hz
m=0.5//mass in kg
//calculations
W=2*%pi*fnD
c=2*m*W*zeta// from Eqn 3.3.6 and Eqn 3.3.7
Epercycl=%pi*c*(2*%pi*f)*X^2//Eqn 4.5.1...energy dissipated per cycle
Epersec=Epercycl*f//energy dissipated per sec 
//output
mprintf(' The power required to vibrate spring mass dashpot system with \n an amplitude of 1.5 cm and at frequency of 100 Hz is %4.4f Watts',Epersec)
mprintf('\nNOTE: slight differnce in answer compared to textbook\n is due approximation of value of pi') 
