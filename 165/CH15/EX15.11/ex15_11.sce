//Example 15.11
clc;

f1=4000;             //in Hz
Q=8;
R2=100000;            //From given tables
R3=(100*10^3)/(3.48*Q-1);    //From given tables
R3=3.9*10^3;                 //Assumed
//R1 is open circuited
R4=(5.03*10^7)/f1;
R5=R4;
R6=10000;        //Assumed a std value
R7=10000;        //Assumed a std Value
R8=10000;        //Assumed a std Value
R9=invr(invr(R6)+invr(R7)+invr(R8))
printf('\nFor Q=8 R1 is open circuited\n')
printf('\nFor Q=8 R2 = %d k ohm\n',R2/1000)
printf('\nFor Q=8 R3 = %.1f k ohm\n',R3/1000)
printf('\nFor Q=8 R4 = %d k ohm\n',R4/1000)
printf('\nFor Q=8 R5 = %d k ohm\n',R5/1000)
printf('\nFor Q=8 R6 = %d k ohm\n',R6/1000)
printf('\nFor Q=8 R7 = %d k ohm\n',R7/1000)
printf('\nFor Q=8 R8 = %d k ohm\n',R8/1000)
printf('\nFor Q=8 R9 = %.2f k ohm\n',R9/1000)