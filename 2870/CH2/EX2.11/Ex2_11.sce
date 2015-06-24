clc;clear;
//Example 2.11

//given values
Win=20;
mair=0.25;

//calculation
v=sqrt(Win/2/mair)//Win = 1/2*m*v^2
if(v >= 8)
    disp('True');
else
    disp('False')
