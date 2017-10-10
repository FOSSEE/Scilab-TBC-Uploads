clc
clear
mprintf('Mechanical vibrations b G.K.Grover\n Example 4.3.1\n')
//given data
m=1200//mass of motor in kg
mo=1//unbalanced mass on motor in kg
e=0.06//location of unbalanced mass from motor in m
Wn=2210*(2*%pi/60)//resonant freq in rad/sec
W=1440*(2*%pi/60)//operating freq 
//calculations
//case 1
zeta=0.1
bet=(W/Wn)
y=(mo/m)//from eqn 4.3.2
X1=(y*e)*(bet)^2/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//from eqn 4.3.2
//case 2
zeta=0
X2=(y*e)*(bet)^2/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//from eqn 4.3.2
//output
mprintf('If the damping is less than 0.1 then the amplitude of \n vibration will be between %f m and %f m',X1,X2)
