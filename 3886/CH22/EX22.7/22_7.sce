//Solid cylinder acted upon by force P
//refer fig. 22.11 (a) and (b)
//(1)Maximum Value of P for Rolling without slipping
//aA=0.8*alpha
I=(1200*0.8^2)/(2*9.81)  
W=1200  //N
N=W  //N
//From law of friction
F=0.2*1200  //N
//Consider moment equilibrium equation about C 
//on solving
alpha=(240)/(97.859-73.394)  //rad/sec
P=73.394*9.81  //N
//(2) When P=1000 N
F2=0.15*1200  //N
//Taking moment about A
alpha2=(1000*0.8-180*0.8)/(39.144)  //rad/sec^2
aA=((1000+180)*9.81)/(1200)  //rad/sec^2
printf("\nMaximum Value of P for Rolling without slipping \nP=%.2f N\nWhen P=1000 N\nalpha=%.2f rad/sec^2\naA=%.3f rad/sec^2",P,alpha2,aA)
