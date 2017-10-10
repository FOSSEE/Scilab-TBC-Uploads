//ques-24.6
//Calculating amount of oxygen dissolved in 1L of water
clc
KH=4.58*10^4;//Henry's constant (in atm)
p2=0.2;//gas pressure (in atm)
X2=p2/KH;
n=(X2*1000)/18;
oxy=n*32;
printf("The amount of oxygen dissolved in 1L of water is %.2f mg.",oxy*1000);
