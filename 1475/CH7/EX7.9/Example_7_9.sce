// Example 7.9 Marshall Edgeworth index number is a good approximation 
clc;
clear;
Po=[9.3 6.4 5.1];
Pn=[4.5 3.7 2.7];
Qo=[100 11 5];
Qn= [90 10 3];
FI=sqrt((sum(Pn.*Qn)*sum(Pn.*Qo))/(sum(Po.*Qo)*sum(Po.*Qn)))*100
ME=(sum(Pn.*Qn)+sum(Pn.*Qo))/(sum(Po.*Qo)+sum(Po.*Qn))*100;
disp("Yes, the two index are very close to each other",FI,"Fishers Ideal  Price Index =",ME," Marshall Edgeworth Price Index = ");
