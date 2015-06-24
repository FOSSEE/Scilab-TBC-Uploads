//Exa 7.2
clc;
clear;
close;
//Given data :
Io=2000000;//in Rs
ANP=350000;//in Rs
S=0;//in Rs
n=10;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=10 %
i1=10;//in % per annum
PW1=-Io+ANP*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth for i=10% in RS. : ");
// when i=12 %
i2=12;//in % per annum
PW2=-Io+ANP*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth for i=15% in RS. : ");
disp("Present worth for i=10% is suitable.");
i=10+(PW1-0)*(i2-i1)/(PW1-PW2);//in Rs.
disp(i,"Therefore, the rate of return of the new product line in % per annum :");