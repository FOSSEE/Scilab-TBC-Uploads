//Example 6.6, Page 138
clc
pf=.85
N1=1500//in rpm
N=1440//in rpm
P=pf*230*10*sqrt(3)
p_stator_loss=86.16//in w
p_rotor=P-p_stator_loss
rotor_copper_loss=((N1-N)/N1)*p_rotor
printf("The rotor copper loss is %f watt",rotor_copper_loss)
inertia=.0486//in kg-m2
E=2*.96*inertia*((2*%pi*50)/2)**2
disp(E)
stops_starts=7920/E
printf("Total number of starts and stops is %d",stops_starts)
