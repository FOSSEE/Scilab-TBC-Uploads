clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.4.1\n')
//given data
T=0.8//time period of free vibration in sec
t=0.3//time for which the vertical distance has to be calculated
//y=18*sin(2*pi*t)
Y=18//max amplitude in mm
//calculations
W=2*%pi
Wn=(2*%pi/T)
bet=(W/Wn)
x=(Y/(1-bet^2))*(sin(W*t)-bet*sin(Wn*t))// from eqn 4.4.17 explained in the same problem
//output
mprintf('The vertical distance moved by mass in the first 0.3 sec is %4.4f mm',x)
