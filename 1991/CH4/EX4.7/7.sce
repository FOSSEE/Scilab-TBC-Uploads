clc
clear
//INPUT DATA
us=264 //speed of jet fighter
x=71.7
v=340 //velocity of sound
f=1*10^3 //frequency
//calculation
usd=us*cosd(x)//horizontal component of velocity
fr= (v*f)/(v-usd) -((v*f)/(v+usd))//frequency range ,doppler effect
//output
printf("the frequency range is %3.3f Hz ",fr)
