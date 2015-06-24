clc
clear

//input data
s=0.2105 //effective jet speed ratio
Is=203.88 //specific impulse in sec
tp=8 //rocket operation duration i.e. burn out time in sec
g=9.81 //acceleration due to kravity in m/s^2

//calculation
Cj=g*Is //average effective jet velocity in m/s
up=s*Cj //maximum flight speed in m/s
MR=1/exp((up+(g*tp))/Cj) //mass ratio
PMF=1-MR //propellant mass fraction
Zp=(((1+((1-(1/PMF))*log(1/MR)))*Cj*tp)-(0.5*g*tp^2))*10^-3 //powered altitude gain in km
Zc=((0.5*up^2)/g)*10^-3 //coasting altitude gain in km
Z=Zp+Zc //maximum altitude in km

//output 
printf('(A)effective jet velocity is %3i m/s\n (B)mass ratio and propellent mass fraction are %3.2f and %3.2f respectively\n (C)maximum flight speed is %3.2f m/s\n (D))altitude gains during powered and coasting flights are %3.3f km and %3.3f km respectively',Cj,MR,PMF,up,Zp,Zc)
