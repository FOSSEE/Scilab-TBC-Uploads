//Calculating synchronous speed and speed of a rotor
//Chapter 4
//Example 4.1
//page 288
clear;
clc;
disp("example 4.1");
f=50;   //frequency
p=6; // number of poles
V=400; //voltage supply
S=4;   //percentage slip
Ns=(120*f)/p;  //synchronous speed
printf("Syhchronous speed,Ns=%d \n",Ns);
Nr=(1-(S/100))*Ns;
printf("speed of rotor with slip 4 percent,Nr is %d rpm \n",Nr);