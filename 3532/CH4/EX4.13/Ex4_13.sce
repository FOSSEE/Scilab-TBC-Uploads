clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.10.2\n')
//given data
m=75//mass of machine in kg
K=11.76*10^5//stiffness of springs in N/m
zeta=0.2
mo=2//mass of piston in kg
stroke=0.08//in m
e=stroke/2//in m
N=3000//spee in c.p.m
//calculations
Wn=sqrt(K/m)
W=2*%pi*N/60
bet=(W/Wn)
y=(mo/m)
Fo=mo*W^2*e//max force exerted
X=y*e*bet^2/(sqrt((1-bet^2)^2+(2*zeta*bet)^2))//Eqn 4.3.2
Ftr=Fo*sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//force transmitted,Eqn 4.10.2 in Sec 4.10.1
mprintf(' a)The amplitude of vibration of machine is %f m and the \n the vibratory force Ftr transmitted to the foundation is %5.4f N',X,Ftr)
mprintf('\nNOTE: slight differnce in answer compared to textbook\n is due approximation of values in textbook') 
