//ques-5.24
//Calculating percentage ionization of acetic acid
clc
Ka=1.74*10^-5;
M=0.1;//molarity of acetic acid
x=sqrt(Ka*M);//content of acetate ion
a=(x/M)*100;//percentage ionization
printf("Percentage ionization of acetic acid is %.1f.",a);
