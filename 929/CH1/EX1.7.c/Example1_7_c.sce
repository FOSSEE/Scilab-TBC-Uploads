//Example 1.7(c)

clear;

clc;

Gerrormax=0.1;// Maximum Gain Error Percentage

//But Gerror100/T ->Gerrormax=100/Tmin -> Tmin=100/Gerrormax

Tmin=100/Gerrormax;

Aideal=100;

b=1/Aideal;//Feedback Factor

amin=Tmin/b;//Minimum Open Loop Gain

//Imposing A=a/(1+ab).We have a=10^5 and Aideal=100 ->100=10^5/(1+10^5b)

y=poly(0,'x');

z=(100*amin)*y+(100-amin);//Solving the equation mentioned in above comment.

b=roots(z);

printf("Feedback Factor (b) for A=100 is =%.5f",b);