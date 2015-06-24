//Exa 2.12
clc;
clear;
close;
//Given Data :
format('v',8);
//Vcon=V;//in volt
//pf=cosfi;//unitless
//Rcon=R;//in ohm
//Part (i) : single phase system
disp("Single phase system :");
P1=5*10^6;//in watt
//I1=P1/(V*cosfi);//in Ampere
disp("Line current,I1="+string(P1)+"/V*cosfi");
//W1=2*I1^2*R;//in Wats(Line losses)
disp("Line Losses,W1="+string(2*P1^2)+"R/(V*cosfi)^2");
//Lloss_percent=W1*P1/100;//in %         eqn(1)
disp("% Line Losses="+string(2*P1^2*100/P1)+"R/(V*cosfi)^2");
//Part (ii) : 3 phase 3 wire system
disp("3 phase 3 wire system :");
//I2=P2/(V*cossfi*sqrt(3));//in Ampere
disp("Line current,I2="+string(10^6/sqrt(3))+"P2/V*cosfi");
//W1=2*I2^2*R;//in Wats(Line losses)
disp("Line Losses,W2="+string(2*(10^6/sqrt(3))^2)+"R*P2^2/(V*cosfi)^2");
//Lloss_percent=W2*P2/100;//in %         eqn(2)
disp("% Line Losses="+string(3*(10^6/sqrt(3))^2)+"R*P2^2/(V*cosfi)^2");
P2=2*P1;//in watts
disp("3 phase load in MW :"+string(P2/10^6));