//ques-35.27
//Calculating magnetic field strength required
clc
f=60;//precessional frequency (in Hz)
g=5.585;
Bn=5.0508*10^-31;//(in J/G)
h=6.6262*10^-34;//(in Js)
Ho=(h*f*10^6)/(g*Bn);
printf("The magnetic field strength required is %.0f G.",Ho);

