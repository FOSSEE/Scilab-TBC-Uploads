clc;
z=0.405;          //ECE in mg/C
i=25;             //current in Ampere
t=1200;           //time in sec
m=z*i*t;          //calculating mass
disp(m,"Mass in gm = ");  //displaying result
m1=10^6;          //mass
t=m1/(z*i);        //calculating time
disp(t,"Time in sec = ");  //displaying result