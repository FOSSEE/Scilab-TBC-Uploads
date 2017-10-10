//EXAMPLE 26.30
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
N1=1000;.........//Speed of the generator in rpm
Wh=250;...........//Hysteresis loss in Watts
We=100;...........//Eddy current loss in Watts


//Total loss W= Wh+We=AN+BN^2 (equation 1)
A=Wh/(N1/60);..........//Constant in Watts
B=We/(N1/60)^2;........//Constant in Watts

L=(Wh+We)/2;.........//Given:Total loss halved at speed N rpm in Watts
N=poly(0,'N');
W=(A*N)+(B*N^2)-(L);.........//(equation 1)
r=roots(W)*60;..................//Speed at which total iron losses is halved in rpm 
printf("Speed at which total iron losses is halved in rpm: %d",r(2));....//Negatiive root ignored 
