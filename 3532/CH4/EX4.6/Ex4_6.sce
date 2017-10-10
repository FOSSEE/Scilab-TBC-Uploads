clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.4.2\n')
//given data
m=0.9//mass in kg
K=1960//stiffness in N/m
Y=5//amp of vibration of support in m
N=1150//frequency in cycles per min
//calculations
Wn=sqrt(K/m)
W=N*2*%pi/60//frequency of  vibration of support
bet=(W/Wn)
//case 1
zeta=0
X1=Y*(sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2))//Eqn (4.4.6)
//case 2
zeta =0.2
X2=Y*(sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2))//Eqn (4.4.6)
//output
mprintf('The amplitude of vibration when damping factor=0 is %4.4f mm \n If damping factor=0.2,then amplitude of vibration is %4.4f mm',X1,X2)
