//Exa 10.4
clc;
clear;
close;
//Cost to the state :  
disp("Cost to the state :")
n=20;//in years
P=2500000000;//in Rs.
Agt=10000000;//in Rs.
Ai=1000000;//in Rs.
Com=48000;//in Rs./year/employee
C1=Com*300;//in Rs.
i=10;//in % per annum
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
C2=P*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);//in Rs
disp(C2,"Annual equivalent initial cost in Rs. : ");
CA=C2+C1;//in Rs
disp(CA,"Total Annual equivalent cost of the project in Rs. : ");
//Benefit to the state : 
disp("Benefit to the state :")
W=30000000;//in Rs.
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
A1=W*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);//in Rs.
Agpy=10000000;//in ton/year
A2=Agpy*(30-10);//in Rs.
AvgAI=1000000;//in tons Km.
G=20000000;//in Rs.
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
A3=A2+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) ;//in Rs.
disp(A3,"Annual equivalent average of transport cost saving in Rs. : ");
BA=A1+A3;//in Rs.
disp(BA,"Total annual equivalent benefits to the state : ");
BCratio=BA/CA;//unitless
disp(BCratio,"BCratio : ");
disp("The benefit cost ratio is more than 1,the project is justified.");