clc
clear

//input data
m1=3600 //internal mass in kg
Cj=2070 //average effective jet velocity in m/s
tp=80 //rocket operation duration in sec
g=9.81 //acceleration due to gravity in m/s^2

//calculation
up=2*Cj //flight velocity in m/s
MR=1/exp((up+(g*tp))/Cj) //mass ratio
m2=MR*m1 //mass after rocket operation in kg
PMF=1-MR //propellant mass fraction
Mp=m1-m2 //mass of propellant in kg
mp=Mp/tp //propellent flow rate in kg/s
F=Cj*mp*10^-3 //thrust in kN
Zp=(((1+((1-(1/PMF))*log(1/MR)))*Cj*tp)-(0.5*g*tp^2))*10^-3 //powered altitude gain in km
Zc=((0.5*up^2)/g)*10^-3 //coasting altitude gain in km
Z=Zp+Zc //maximum altitude in km

//output
printf('(A)flow rate of propellent is %3.2f kg/s\n (B)thrust developed is %3.3f kN\n (C)altitude gains during powered and coasting flights are %3.3f km and %3.3f km respectively',mp,F,Zp,Zc)
