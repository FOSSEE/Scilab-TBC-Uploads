//ques-25.12
//Calculating rms velocity of oxygen molecules
clc
T=273+27;//temperature (in K)
M=32;//molar mass of O2 (in g/mol)
Crms=sqrt((3*8.314*T)/(M/1000));
printf("The rms velocity of oxygen molecules is %.2f m/s.",Crms);
