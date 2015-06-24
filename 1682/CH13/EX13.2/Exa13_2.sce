//Exa 13.2
clc;
clear;
close;
//Buy Option :
disp("Buy Option :")
//given data :
Pbuy=8;//in Rs/unit
D=2000;//in units/year
Co=120;//in Rs./order
Cc=1.60;//in Rs./units/year
Q1=sqrt(2*Co*D/Cc);//in units
TC=D*Pbuy+D*Co/Q1+Q1*Cc/2;//in Rs.
disp(TC,"Total cost of buying in Rs. : ")
//Make Option :
disp("Make Option :")
//given data :
Pmake=5;//in Rs/unit
Co=60;//in Rs./setup
Cc=1;//in Re1/units/year
r=2000;//in units/year
k=8000;//in units/year
Q2=sqrt(2*Co*r/(Cc*(1-r/k)));//in units
TC=D*Pmake+D*Co/Q2+Q2*Cc*(k-r)/(2*k);//in Rs.
disp(TC,"Total cost of making in Rs. : ")
disp("The cost of making is less than the cost of buying . Therefore, the firm should go in for making option.");