//calculate approximate time of commmutation
//Chapter 2
//Example 2.16
//page 103
clear;
clc; 
disp("Example 2.16")
Cd=0.76;            //commutator diameter in metres
Cr=.38;              //commutator radius in metres
bw=1.5*10^(-2);        //brush width in metres
N=600;                //speed in rpm
n=10;                //speed in rps
V=Cr*(2*3.14*n);        
printf("peripheral speed of commutator,V=%fm/sec",V);
 Tc=bw/V;
 printf("\nTime of commutation=%fseconds",Tc)
 
 
 
 
 
 