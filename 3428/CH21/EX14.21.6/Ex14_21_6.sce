//Section-14,Example-1,Page no.-PC.16
//To calculate temperature at which rms velocity of hydrogen gas =100 ms^-1
clc;
//v_rms=sqrt((3*R*T)/M)
v_rms=100                 //ms^-1
R=8.314                  //JK^-1mol^-1
M=2*10^-3                //kgmol^-1
T=((v_rms^2*M)/(3*R))            //K
disp(T,'Required temperature(K)')

