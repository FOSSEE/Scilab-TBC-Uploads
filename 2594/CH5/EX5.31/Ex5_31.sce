clc
T=300
disp("T = "+string(T)+" K") //initializing value of temperature .
Eg=0.7*1.6*10^-19
disp("Eg = "+string(Eg)+" V") //initializing value of Band Gap energy of the material.
K=1.38*10^-23
disp("K = "+string(K)+" J/K") //initializing value of boltzmann constant.
X=((Eg/(K*T^2)))+(3/T)
disp("Relative change in Io,... 1/Io*(dIo/dT)= "+string(X))//calculation
//in percent form
disp("Relative change in Io,... 1/Io*(dIo/dT)= "+string(X*100)+" %")//calculation

//... taking, (1/Io)*(dIo/dT) as 'X'

//This is the solved example of chapter 5 (Ex 5.1)0n page 128
