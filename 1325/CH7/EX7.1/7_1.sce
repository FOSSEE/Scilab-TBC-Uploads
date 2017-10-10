//To find maximum horsepower which belt can transmit
clc
//given-belt is perfectly elastic and massless 
u=0.3
v=3600//ft/min
V=v/60//ft/sec
theta=165//degrees
x=theta*%pi/180
k=%e^(u*x)//k=T1/T2=e^(u*x)
To=500//lb
T1=2*k*To/(k+1)
T2=T1/k
T=T1-T2//effective tension
H=T*V/550//horsepower transmitted
printf("\nThe horse-power transmitted = %.2f\n",H)
