
clc
w=1.2//lb/ft^2
u=0.3
v=3600//ft/min
V=v/60//ft/sec
theta=165//degrees
g=32.2//ft/s^2
x=theta*%pi/180
k=%e^(u*x)//k=T1/T2=e^(u*x)
To=500//lb
//Solution a)Vertical drive
Tc=w*V^2/g//equation 7.5
//solution a)
H=2*(k-1)*(To-Tc)*V/((k+1)*550)
Vmax=(To*g/(3*w))^(1/2)
Hmax=2*(k-1)*(To-Tc)*Vmax/((k+1)*550)
//Solution b)
To1=To+Tc
//from equation 7.15 2/To1^2=1/Tt^2+1/Ts^2
//T1/T2=k
T2=367 //lb - from trail and error
T1=k*T2
Tt=T1+Tc
Ts=T2+Tc
HP=(T1-T2)*V/550
printf("\nSolution a)\nHorsepower transmitted= %.1f\nMaximum Horsepower transmitted= %.1f (at velocit = %.1f ft/s^2)Solution b)\nTt=%.f lb\nTs=%.f lb\nHorsepower transmitted= %.1f",H,Hmax,Vmax,Tt,Ts,HP)

