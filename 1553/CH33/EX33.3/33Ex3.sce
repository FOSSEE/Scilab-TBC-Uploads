//Chapter 33 Ex3
clc;
clear;
close;
bd=1800;rate=12/100; facevalue=1872; 
//SI on 1800=TD on 1872
PW=facevalue-bd; //present worth
time=PW/(bd*rate);
mprintf("The time is %.2f year i.e %.0f months",time,time*12);
