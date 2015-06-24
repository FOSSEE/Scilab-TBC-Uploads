//Exa 9.7
clc;
clear;
close;
//given data :
//Part (i)
D=10;//in Km
lambda=10000;//in meter
LP=(4*%pi*D*1000/lambda)^2;//in dB
disp(LP,"Path loss in dB : ");
//Part (ii)
D=10^6;//in Km
lambda=0.3;//in cm
LP=(4*%pi*D*1000/(lambda*10^-2))^2;//in dB
disp(LP,"Path loss in dB : ");
//Note : Answer in the book is wrong as value putted in the solution is differ from given in question.