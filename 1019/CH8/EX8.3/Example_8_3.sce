//Example 8.3
clear;
clc;

//Given
p=1.7;
Kp=p*10^12;//equillibrium constant at 300K

// (i) To determine Kp1
p1=1/p;
Kp1=1/Kp;//equillibrium constant
mprintf('(i) Kp = %f * 10^-12',p1);

//(ii) To determine Kc2
p2=p1^2;
Kp2=Kp1^2;//equillibrium constant
mprintf('\n (ii) Kp = %f * 10^-24',p2);
p3=1/p2;
Kp3=1/Kp2;//equillibrium constant
mprintf('\n (iii) Kp = %f * 10^24',p3)
//end