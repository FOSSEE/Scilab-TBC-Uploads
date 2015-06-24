//Exa 11.1
clc;
clear;
close;
disp("Few steps are as follows : ");
disp("Step 1 : The estimated future requirementt per year in terms of todays rupees from his age 61 through 70 is Rs. 24000.");
disp("Step 2 : The formula which is given below is used to get future equivalent of Rs. 24000 with the inflation of 9% per year.");
disp("Formula : P*(1+IR)^n");
P=24000;//in Rs.
IR=9;//in % per year
Age=61;//in years
for n=21:30
    IV=P*(1+IR/100)^n;//in Rs
    disp("Age in years : "+string(Age)+". ""Inflated value of Rs. 24000 at end of year : "+string(n)+" in Rs. "+string(round(IV)));
    Age=Age+1;//in Years
end;
PW=0;//For initialising
n=21;//in years
for m=1:10  
    IV=P*(1+IR/100)^n;//in Rs
    n=n+1;
    i=15;//in % per year
    PW=PW+IV/(1+i/100)^m;
end
disp(PW,"Present equivalent of withdrawls in Rs. : ");
//The annual equivalent amount :
i=15;//in % per year
n=20;//in years
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1) 
A=PW*(i/100)/(((1+i/100)^n)-1);//in Rs.
disp(A,"The annual equivalent amount in Rs. : ");
disp("RECOMMENDATION : The person has to invest an amount of Rs. "+string(A)+" at the end of every year starting from his age 41 through 60 which will enable him to make a withdrawl at the end of every year starting from his age 61 through 70."); 