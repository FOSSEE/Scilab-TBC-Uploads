//Exa 11.4
clc;
clear;
close;
IR=6;//in % per year
i=18;//in % per year
AFR=5000000;//in Rs.
n=7;//in years
AI=500000;//in Rs.
disp("End of year     AFR     InflationFactor     InflatedAmount     P/F     PW");
TPW=0;//Initialising
format('v',10)
for n=1:5
    IF=(1+IR/100)^n;
    IA=IF*AFR;//in Rs.
    PF=1/((1+i/100)^n);
    PW=PF*IA;//in Rs.
    TPW=PW+TPW;//in Rs.
    disp("       "+string(n)+"        "+string(AFR)+"        "+string(IF)+"        "+string(IA)+"    "+string(PF)+"     "+string(PW));
    AFR=AFR+AI;//in Rs.
end;
disp(TPW,"The value of the single deposit to be made now to recieve the specified series for the next five years is Rs. : ")
