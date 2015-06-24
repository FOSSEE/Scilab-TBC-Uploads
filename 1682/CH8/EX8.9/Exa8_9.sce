//Exa 8.9
clc;
clear;
close;
//Given data : 
p1=0.07;//unitless
p2=0.11;//unitless
p3=0.12;//unitless
p4=0.18;//unitless
p5=0.21;//unitless
p6=0.20;//unitless
p7=0.11;//unitless
N0=100;//no. of transistors
N1=N0*p1;//no. of transistors
N2=N0*p2;//no. of transistors
N3=N0*p3;//no. of transistors
N4=N0*p4;//no. of transistors
N5=N0*p5;//no. of transistors
N6=N0*p6;//no. of transistors
N7=N0*p7;//no. of transistors
//Calculation of individual replacement cost
Life=0;//in weeks
p=[p1 p2 p3 p4 p5 p6 p7];//Unitless
for i=1:7
    Life=Life+i*p(i);
end
disp(Life,"Expected life of each transistor in weeks : ")
disp(round(100/Life),"Average No. of failures/week :  ");

//Calculation of group replacement cost
disp("Cost of transistor when replaced simultaneously = Rs. 3");
disp("Cost of transistor when replaced individually = Rs. 9");
disp("The cost of group replacement policy for seeral replacement periods are summarized in Table 8.6. This table can be seen from the book.");
disp("From table it is clear that the avg cost/week is minimum for the 4th week. Hence, the group replacement period is 4 weeks.");
disp("Individual replacement cost/week = Rs. 207");
disp("Minimum group replacement ost/week = Rs. 196.50");
disp("Since the min group replacement cost/week is less than the individual replacement cost/week, the group replacement policy is the best, and hence all the transistors should be replaced in 4 weeks.")