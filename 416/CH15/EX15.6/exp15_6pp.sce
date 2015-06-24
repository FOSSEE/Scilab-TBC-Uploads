clc
clear
disp('example 15.6')
vo=100 //motor rated voltage
efm=0.4 //efficiency of motor pump
efi=0.85 //efficiency of inverter
h=50 //head of water
v=25 //volume of water per day
ov=18 //pv pannel output module
pr=40 //power rating
ao=2000 //annual output of array
dw=1000 //density of water
en=v*dw*h*9.81 //energy needed to pump water every day
enkw=en/(3.6*10^6)  //energy in kilo watt hour
oe=efm*efi  //overall efficiency
epv=round(enkw/oe)  //energy out of pv system
de=ao/365  //daily energy output
pw=epv*10^3/de  //peak wattage of pv array
rv=vo*(%pi)/sqrt(2)  //rms voltage
nm=rv/ov  //number of modules in series
nm=ceil(nm)
rpp=nm*pr //rated peak power output
np=pw/rpp //number of strings in parallel
np=round(np)
printf(" energy needed o pump water every day %fkWh/day \n overall efficiency %.2f \n energy output of pv system %dkWh/day ",enkw,oe,epv)
printf("\n annual energy out of array %dWh/Wp \ndaily energy output of array %.3fWh/Wp \n peak wattage of pv array %.2fWp \n rms output voltage %.2fV\nnumber of modules in series %d \n rated peak power output of each string %.2fW \n number of strings in parallel %d",epv,de,pw,rv,nm,rpp,np)
