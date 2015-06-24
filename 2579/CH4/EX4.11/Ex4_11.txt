//Ex:4.11
clc;
clear;
close;
printf("A=pi*a^2=pi(y/25)^2=pi*y^2/625");
printf("\n Rr=31171.2*(A/y^2)^2");
printf("\n and finally, Rr=(31171.2*pi^2)/(625^2)");
Rr=(31171.2*%pi^2)/(625^2);// radiation resistance for single turn
N2=82;
Rr1=Rr*N2;// radiation resistance for turn loop
printf("\n The radiation resistance for single turn = %f ohm", Rr);
printf("\n The radiation resistance for turn loop = %f ohm", Rr1);
printf("\n The answer is wronge in the given textbook");