//Chapter 9
//page no 315
//given
clc;
clear all;
Slw=25;         //in nm
L=850;          //in nm         given
c=3*10^5;        //in km/s
ofmd=0.02;          //optical fiber material dispersion
Mdp=1/L/c*ofmd;         //answer mismatch due to differnt value chosen for calculation
printf(" \n Material Dispersion parameter Mdp =  %0.0f ps/nm.km",Mdp*10^12);
l=1;            //in km
dmd=Slw*l*Mdp;      //pulse chirping
printf(" \n pulse chirping dmd =  %0.2f ns/km",dmd*10^9);


