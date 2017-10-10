clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.10.3\n')
// given data
m=20 //mass in kgs
k=125600 //overall eqivalent stiffness i.e 4*31400 in N/m
c=1568 //overall damping coefficient i.e 4*392 in N-sec/m
n=500 //vibrating speed of machine in cpm
//y=Ysin(w*t)
Y=0.00005 //vibrating amplitude of machine in m
W=2*%pi*n/60 //vibrating frequency in rad/sec
Wn=sqrt(k/m) //natural frequency in rad/sec
bet=(W/Wn) //speed ratio
zeta=c/(2*sqrt(k*m)) //damping factor
//calculations
X=Y*sqrt((1+(2*zeta*bet)^2)/((1-bet^2)^2+(2*zeta*bet)^2)) //absolute amplitude of vibration of radio from eqn (4.4.6)
Z=Y*((bet^2)/sqrt(((1-bet^2)^2+(2*zeta*bet)^2)))//from eqn 4.4.11
FdynT=Z*sqrt((c*W)^2+k^2)//dynamic load total
Fdyn=FdynT/4 //dynamic load on each isolator
FdynTmax=m*W^2*X //max dynamic load on the isolators
Fdynmax=FdynTmax/4 //max dynamic load on each isolator
//output
mprintf('a) The amplitude of vibration of radio is %f metres \n b)the dynamic load on each isolator due to vibration is %3.3f N',X,Fdyn)
