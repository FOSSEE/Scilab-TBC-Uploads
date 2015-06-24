clc();
clear;
//To determine the frequency of oscillator to be used to accelerate protons
q=1.6*(10*10^-19);                  //charge of the particle
B=1;                                //magnetic field in T
m=1.67*(10^-27);                    //mass of proton in kg
omega=(q*B)/m;                      //angular frequency in radians/s
v=[omega/(2*%pi)]*10^-8;            //in MHz
r=0.5;                              //radius in m
s=omega*r;                          //speed of proton in m/s
K=[m*(s^2)]*(1/2)*6.27*10^10        //kinetic energy of protons emerging from cyclotron
printf("The frequency of oscillator to accelerate protons is %f radians/s ,speed of proton is %f m/s and the kinetic energy of protons emerging from the cyclotron is %f MeV",omega,s,K);