// Exa 6.9
// To calculate the normalized throughput with: 
//(a) an unslotted nonpersistent,
//(b) a slotted persistent, and
//(c) a slotted 1-persistent CSMA protocol.

clc;
clear all;

e=2.71828; //Euler's number
Tprop=0.4; //Max propogation delay in sec
R=10; //data rate in Mbps
PackLen=400; //packet length in bits

//solution
Tp=PackLen/R; //packet transmission time in microsec
a=Tprop/Tp;
G=Tp*10^-6*R*10^6/PackLen;//normalized offered trafﬁc load 
//Slotted nonpersistent
S0=a*G*e^(-a*G)/(1-e^(-a*G)+a);//normalized throughput 
//Unslotted nonpersistent
S1=G*e^(-a*G)/(1+(2*a)+e^(-a*G));//normalized throughput 
//Slotted 1-persistent
S2=G*e^(-G*(1+a))*(1+a-e^(-a*G))/((1+a)*(1-e^(-a*G))+a*e^(-G*(1+a)));//normalized throughput 
printf('The Normalized throughput with an unslotted non persistent, a slotted persistent and a slotted 1-persistent CSMA protocol are \n %.3f,%.3f and %.3f respectively \n',S0,S1,S2);
