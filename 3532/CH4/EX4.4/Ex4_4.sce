clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.3.2\n')
//given data
m=320//mass of engine in kg
mo=24//reciprocating mass on motor in kg
r=0.15//vertical stroke in m
e=r/2
delst=0.002//stati defln in m
C=490/(0.3)//damping recistance in N-sec/m
g=9.81// gravity in m/sec^2
N=480//speed in rpm in case b)
//calculation
Wn=sqrt(g/delst) //natural freqency in rad/sec
Nr=Wn/(2*%pi)*60 //resonant speed in rpm
W=(2*%pi*N/60)
bet=(W/Wn)
zeta=(C/(2*m*Wn)) //damping factor
y=(mo/m)//from eqn 4.3.2
X=(y*e)*(bet)^2/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//from eqn 4.3.2
//output
mprintf(' a)speed of driving shaft at which esonance occurs is %4.4f RPM\n b)The amplitude of steady state forced vibrations when the driving shaft \n of the engine rotates at 480 RPM is %f m',Nr,X) 
