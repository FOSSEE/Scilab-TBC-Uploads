clc
clear
//input
ns=330 //number of turns of secondary
np=450 //number of turns in primary
e=0.65 //efficiency
vp=240 //ac supply of primary
//calculation
vs=e*(vp*ns)/np//transformer equation
//output
printf("the pd across secondary is %3.0f V",vs)
