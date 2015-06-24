//Exa 7.1
clc;
clear;
close;
//Given data :
Ii=100000;//in Rs
Ar=30000;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=10 %
i1=10;//in % per annum
PW1=-Ii+Ar*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth for i=10% in RS. : ");
// when i=15 %
i2=15;//in % per annum
PW2=-Ii+Ar*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth for i=15% in RS. : ");
// when i=18 %
i3=18;//in % per annum
PW3=-Ii+Ar*(((1+i3/100)^n)-1)/((i3/100)*(1+i3/100)^n);//in RS
disp(PW3,"The present worth for i=18% in RS. : ");
disp("Present worth for i=15% is suitable.");
i=15+(PW2-0)*(i3-i2)/(PW2-PW3);//in Rs.
disp(i,"Therefore, the rate of return for the new business in % per annum :");