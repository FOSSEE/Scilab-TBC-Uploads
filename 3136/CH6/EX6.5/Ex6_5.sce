clear all; clc;
//the answer of p02b given in the book is 94.1,however the right answer is 92.05 which is rounded off to 92.1 here

p_02b=90+0.5*0.00237*((500)^2)/144
printf("\n p02b= %0.1f psia",p_02b)

//let x=T02/T01
x=(480+460)/(60+460)
printf("\n T02/T01= %0.4f which is also =(94.1/14.7)^((0.2857)/(Eta_p)) ",x)//answer given in the book is 94.1,which is substituted
disp("From (0.2857/Eta_p)*ln(94.1/14.7)=ln(1.807) we can obtain the polytropic efficiency")
Eta_p=(log(94.1/14.7)/log(1.807))*0.2857
printf("Eta_p= %0.4f",Eta_p)

disp("0.85=[(4.5)^(0.2857)-1]/[(4.5)^(0.2857/Eta_p)-1")
disp("Thus 0.5638/((4.5^(0.2857/Eta_p))-1)")
disp("We have polytropic efficiency for compressor A,Eta_pa=0.878.")
disp("Hence,compressor bB is moe efficient")
