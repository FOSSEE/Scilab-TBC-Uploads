//Root Mean Square velocity

clear;
clc;

printf("\t Example 5.16\n");

R=8.314;//universal Gas constant, J/K mol
T=25+273;//temp in K

//for O2
M=4.003*10^-3;//mol mass in kg
Urms=sqrt(3*R*T/M);//rms velocity, m/s

printf("\t the rms velocity of O2 collected is : %4.2f *10^3 m/s\n",Urms*10^-3);

//for N2
M=28.02*10^-3;//mol mass in kg
Urms=sqrt(3*R*T/M);//rms velocity, m/s

printf("\t the rms velocity of N2 collected is : %4.0f m/s\n",Urms);

//End
