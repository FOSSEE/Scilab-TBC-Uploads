clear all;
clc;
printf("\n Example 11.19");
//Data from fig. 11.42
a = [0 0.02 0.04 0.06 0.08 0.1 0.2 0.4 0.6 0.8 1.0];
b = [0.75 0.62 0.60 0.57 0.55 0.52 0.45 0.30 0.18 0.09 0];
//a = (R-Rm)/(R+1)
//b = [(n+1)-(nm+1)]/(n+2)
R = [0.92 1.08 1.25 1.75 2.5 3.5 5.0 7.0 9.0];
n = [28.6 22.8 16.9 13.5 11.7 10.5 9.8 9.2 8.95];
plot(n,R);
xtitle("Plot of R vs n","n","R");
printf("\n Derivative calculated from the graph");
d = [110.0 34.9 9.8 3.8 1.7 0.6 0.4 0.2 0.05];
i=1;
while i <=9
   s = R(i)+1 - (n(i)+7.72)/d(i);
   if s <=0.0001 then
       Ropt = R(i);
       printf("\n Ropt = %.2f",Ropt);
       break;
   end
   i=i+1;
end
printf("\n R is approximately %.1f percent of the minimum reflux condition",1.25/0.866666666*100);















