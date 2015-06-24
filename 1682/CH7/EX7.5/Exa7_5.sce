//Exa 7.5
clc;
clear;
close;
//Alternative 1:
disp("Alternative 1:");
Io=500000;//in Rs
Ar=170000;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=15 %
i1=15;//in % per annum
PW1=-Io+Ar*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth(PW(15%)) for i=10% in RS. : ");
// when i=17 %
i2=17;//in % per annum
PW2=-Io+Ar*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth(PW17(%)) for i=10% in RS. : ");
// when i=20 %
i3=20;//in % per annum
PW3=-Io+Ar*(((1+i3/100)^n)-1)/((i3/100)*(1+i3/100)^n);//in RS
disp(PW3,"The present worth(PW(20%)) for i=10% in RS. : ");
// when i=22 %
i4=22;//in % per annum
PW4=-Io+Ar*(((1+i4/100)^n)-1)/((i4/100)*(1+i4/100)^n);//in RS
disp(PW4,"The present worth(PW(22%)) for i=10% in RS. : ");
disp("Present worth for i=15% is suitable.");
i=i3+(PW3-0)*(i4-i3)/(PW3-PW4);//in Rs.
disp(i,"Therefore, the rate of return of alternative 1 in % per annum :");

//Alternative 2:
disp("Alternative 2:");
Io=800000;//in Rs
Ar=270000;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=20 %
i3=20;//in % per annum
PW3=-Io+Ar*(((1+i3/100)^n)-1)/((i3/100)*(1+i3/100)^n);//in RS
disp(PW3,"The present worth(PW(20%)) for i=10% in RS. : ");
// when i=22 %
i4=22;//in % per annum
PW4=-Io+Ar*(((1+i4/100)^n)-1)/((i4/100)*(1+i4/100)^n);//in RS
disp(PW4,"The present worth(PW(22%)) for i=10% in RS. : ");
disp("Present worth for i=15% is suitable.");
i=i3+(PW3-0)*(i4-i3)/(PW3-PW4);//in Rs.
disp(i,"Therefore, the rate of return of alternative 2 in % per annum :");
disp("Since the rate of return of alternative 1 is greater than that of the alternative 2, select alternative 1. ");