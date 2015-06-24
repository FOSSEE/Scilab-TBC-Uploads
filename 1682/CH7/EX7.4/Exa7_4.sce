//Exa 7.4
clc;
clear;
close;
//Given data
A0=-1275;//in Rs
A1=150;//in Rs
G=150;//in Rs
i=10;//in % per annum
n=5;//in years
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
A=A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) ;//in RS
disp(A,"The annual equivalent of the positive cash flows in RS. : ");
//Formula : (P/A,i,n) : (((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
i1=10;//in % per annum
PW1=A0+(A1+G*(((1+i1/100)^n)-i1*n/100-1)/(((i1/100)*(1+i1/100)^n)-i1/100))*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);''//i1n Rs.
disp(PW1,"PW(10) :");
i2=12;//i2n % per annum
PW2=A0+(A1+G*(((1+i2/100)^n)-i2*n/100-1)/(((i2/100)*(1+i2/100)^n)-i2/100))*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);''//i2n Rs.
disp(PW2,"PW(12) :");
i3=15;//i3n % per annum
PW3=A0+(A1+G*(((1+i3/100)^n)-i3*n/100-1)/(((i3/100)*(1+i3/100)^n)-i3/100))*(((1+i3/100)^n)-1)/((i3/100)*(1+i3/100)^n);''//i3n Rs.
disp(PW3,"PW(15) :");
i4=18;//in % per annum
PW4=A0+(A1+G*(((1+i4/100)^n)-i4*n/100-1)/(((i4/100)*(1+i4/100)^n)-i4/100))*(((1+i4/100)^n)-1)/((i4/100)*(1+i4/100)^n);''//in Rs.
disp(PW4,"PW(18) :");

disp("Present worth for i=15% is suitable.");
i=i3+(PW3-0)*(i4-i3)/(PW3-PW4);//in Rs.
disp(i,"Therefore, the rate of return for the given cash flow in % per annum :");