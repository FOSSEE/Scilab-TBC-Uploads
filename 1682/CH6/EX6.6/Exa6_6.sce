//Exa 6.6
clc;
clear;
close;
//Alternative 1 : Purchase of diesel Taxi
disp("Alternative 1 : Purchase of diesel Taxi");
VC=390000;//in Rs
LpY=60000/30;//in litres
FcY=2000*8;//in Rs
AllExp=FcY+9000+15000;//in Rs
S=60000;//in Rs
i=20;//in % per annum
n=4;//in years
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE1=VC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+AllExp-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE1,"The Annual equivalent cost for this alternative in RS. : ");

//Alternative 2 : Purchase of petrol Taxi
disp("Alternative 2 : Purchase of petrol Taxi");
VC=360000;//in Rs
LpY=60000/20;//in litres
FcY=3000*20;//in Rs
AllExp=FcY+6000+15000;//in Rs
S=90000;//in Rs
i=20;//in % per annum
n=3;//in years
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
AE2=VC*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+AllExp-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(AE2,"The Annual equivalent cost for this alternative in RS. : ");
disp("The annual equivalent cost of purchase and operation of cars with diesel engine is less than that of cars with petrol engine. Therefore, the taxy company should buy cars with diesel engine.");
//Note : Calculation in the book is not accurate.