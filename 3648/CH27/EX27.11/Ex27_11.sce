//Example 27_11
clc();
clear;
//To find the activity of sr
t1=28    //units in Years
t1=t1*86400*365    //Units in sec
acti=6.022*10^26      //Units of Bq
m1=90     //Units in Kg
m2=0.001    //Units in Kg
N=(m2/m1)*acti    //Units in constant
activity=0.693*N/t1    //Units in Bq
printf("The activity of sr=")
disp(activity)
printf("Bq")
