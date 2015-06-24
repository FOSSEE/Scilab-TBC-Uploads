//Example 1.7(b)

clear;

clc;

Gerrormax=0.1;// Maximum Gain Error Percentage

//But Gerror100/T ->Gerrormax=100/Tmin -> Tmin=100/Gerrormax

Tmin=100/Gerrormax;

Aideal=100;

b=1/Aideal;//Feedback Factor

amin=Tmin/b;//Minimum Open Loop Gain

printf("\nOpen Loop Gain (a)>=%.f",amin);