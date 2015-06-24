//Exa 4.1
clc;
clear;
close;
//Technology 1 :
disp("Technology 1 : ");
P=1200000;//in Rs
A=400000;//in Rs
i=20;//in % per annum
n=10;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=-P+A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth for this technology in RS. : ");

//Technology 2 :
disp("Technology 2 : ");
P=2000000;//in Rs
A=600000;//in Rs
i=20;//in % per annum
n=10;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=-P+A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth for this technology in RS. : ");

//Technology 3 :
disp("Technology 3 : ");
P=1800000;//in Rs
A=500000;//in Rs
i=20;//in % per annum
n=10;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW=-P+A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW,"The present worth for this technology in RS. : ");
disp("It is clear from the calculations that the present worth of technology 2 is the highest among all technologies. Therefore technology 2 is suggested for implementation to expand the production.");