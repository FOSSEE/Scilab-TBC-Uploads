//Exa 4.6
clc;
clear;
close;
//Novel Investment Ltd. Plan : 
P0=-10000;//in Rs
P=800000;//in Rs
i=12;//in % per annum
n=20;//in years
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
//Formula : (P/A,i,n) : (((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW1=P0*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)+P*1/((1+i/100)^n);//in RS
disp(PW1,"The present worth of Plan-1 in RS. : ");

//Innovative Investment Ltd. Plan : 
P0=-10000;//in Rs
P=1500000;//in Rs
i=12;//in % per annum
n1=20;//in years
n2=25;//in years
//Formula : (P/F,i,n) : 1/((1+i/100)^n)
PW2=P0*(((1+i/100)^n1)-1)/((i/100)*(1+i/100)^n1)+P*1/((1+i/100)^n2);//in RS
disp(PW2,"The present worth of Plan-1 in RS. : ");
disp("The present worth of Innovative Investment Ltd. Plan is more than that of Novel Investment Ltd. Plan. Therefore Innovative Investment Ltd. Plan is the best plan from the investors point of view.");