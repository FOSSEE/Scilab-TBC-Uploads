//ques-35.28
//Calculating precessional frequency of electrons in a magnetic field
clc
Ho=15000;//magnetic field (in G)
g=5.585;
Bn=5.0508*10^-31;//(in J/G)
h=6.6262*10^-34;//(in Js)
f=(g*Bn*Ho)/h;
printf("The precessional frequency of electrons is %d MHz.",f*10^-4);
