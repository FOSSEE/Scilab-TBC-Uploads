clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.10.1\n')
//given data
m=1000//mass of machine in kg
Fo=490//amp of force in N
f=180//freq inRPM
//calculations
//case a)
K=1.96*10^6//total stiffness of springs in N/m
Wn=sqrt(K/m)
W=2*%pi*f/60
bet=(W/Wn)
zeta=0
Xst1=Fo/K//amplitude of steady state
X1=Xst1*(1/(sqrt((1-bet^2)^2+(2*zeta*bet)^2)))//amp of vibration Eqn 4.2.15 in Sec 4.2.1
Ftr1=Fo*sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//force transmitted,Eqn 4.10.2 in Sec 4.10.1
//case b)
K=9.8*10^4//total stiffness of springs in N/m
Wn=sqrt(K/m)
W=2*%pi*f/60
bet=(W/Wn)
zeta=0
Xst2=Fo/K//amplitude of steady state
X2=Xst2*(1/(sqrt((1-bet^2)^2+(2*zeta*bet)^2)))//amp of vibration Eqn 4.2.15 in Sec 4.2.1
Ftr2=Fo*sqrt(1+(2*zeta*bet)^2)/sqrt((1-bet^2)^2+(2*zeta*bet)^2)//force transmitted,Eqn 4.10.2 in Sec 4.10.1
//output
mprintf(' a)The amplitude of motion of machine is %f m and the maximum force transmitted\n to the foundation because of the unbalanced force when\n K=1.96*10^6 N/m is %4.4f N\n b)for same case as in a)if K=9.8*10^4 N/m then\n the amplitude of motion of machine is %f m\n and the maximum force transmitted to the foundation because of\n the unbalanced force %4.4f N',X1,Ftr1,X2,Ftr2)
