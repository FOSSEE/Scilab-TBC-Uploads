//Exa 7.3
clc;
clear;
close;
//Alternative 1:
disp("Alternative 1:");
Io=150000;//in Rs
Ap=45570;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=10 %
i1=10;//in % per annum
PW1=-Io+Ap*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth for i=10% in RS. : ");
// when i=12 %
i2=12;//in % per annum
PW2=-Io+Ap*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth for i=10% in RS. : ");
// when i=15 %
i3=15;//in % per annum
PW3=-Io+Ap*(((1+i3/100)^n)-1)/((i3/100)*(1+i3/100)^n);//in RS
disp(PW3,"The present worth for i=10% in RS. : ");
// when i=18 %
i4=18;//in % per annum
PW4=-Io+Ap*(((1+i4/100)^n)-1)/((i4/100)*(1+i4/100)^n);//in RS
disp(PW4,"The present worth for i=10% in RS. : ");
disp("Present worth for i=15% is suitable.");
i=i3+(PW3-0)*(i4-i3)/(PW3-PW4);//in Rs.
disp(i,"Therefore, the rate of return of alternative in % per annum :");

//Alternative 2:
disp("Alternative 2:");
Io=210000;//in Rs
Ap=58260;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=12 %
i1=12;//in % per annum
PW1=-Io+Ap*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth for i=12% in RS. : ");
// when i=13 %
i2=13;//in % per annum
PW2=-Io+Ap*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth for i=13% in RS. : ");
disp("Present worth for i=12% is suitable.");
i=i1+(PW1-0)*(i2-i1)/(PW1-PW2);//in Rs.
disp(i,"Therefore, the rate of return of alternative 2 in % per annum :");

//Alternative 3:
disp("Alternative 3:");
Io=255000;//in Rs
Ap=69000;//in Rs
n=5;//in years
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
// when i=11 %
i1=11;//in % per annum
PW1=-Io+Ap*(((1+i1/100)^n)-1)/((i1/100)*(1+i1/100)^n);//in RS
disp(PW1,"The present worth for i=11% in RS. : ");
// when i=12 %
i2=12;//in % per annum
PW2=-Io+Ap*(((1+i2/100)^n)-1)/((i2/100)*(1+i2/100)^n);//in RS
disp(PW2,"The present worth for i=12% in RS. : ");
disp("Present worth for i=11% is suitable.");
i=i1+(PW1-0)*(i2-i1)/(PW1-PW2);//in Rs.
disp(i,"Therefore, the rate of return of the alternative 3 in % per annum :");
disp("");
disp("It is clear that rate of return for alternative 3v is less than the minimum attractive rate of return of 12 %. So it should not be considered for comparison. the remaining two alternatives are qualified for consideration. Among the alternatives 1 and 2, the rate of return of 1 is greater than that of 2. ence,         alternative 1 should be selected. ");