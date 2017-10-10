clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.4.3\n')
//given data
delst=0.1//steady state defln in m
g=9.81//acceleration due to gravity
Y=0.08//amp of vibration of automobile in m
lambda=14//wavelenght of profile in m
//calculations
Wn=sqrt(g/delst)
fn=Wn/(2*%pi)//frequency of vibration of automobile in Hz
Vc=(3600/1000)*lambda*fn//critical speed in km/hr
V=60 //speed in km/hr
W=V*(1000/3600)*(2*%pi/lambda)
bet=(W/Wn)
zeta=0
X=Y*(sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2))//Eqn (4.4.6)
//output
mprintf(' The critical speed of automobile %4.4f km/hr\n The amplitude of vibration at 60 Km/Hr is %4.4f m',Vc,X)
