clc
b=[0 1 2 3 4 5 6];..........................//breakdown/day
f=[340 121 53 30 12 4 0];...................//frequency
Den=sum(f);
ans=0;
for i=1:7
    ans=ans+[f(i) * b(i)];
end
Mean=ans/Den;...............................//calculation of expectance
disp(Mean,"mean");

k=0:1:6;
y=(exp(-Mean)*(Mean^k)). /factorial(k);
disp(y);
plot2d(k,y);......................//Poisson distribution
title("Poisson Distribution",k,y);
xlabel("Breakdown/day");
ylabel("Probability");
