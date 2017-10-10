//Example 15.10
clc;

f1=1500;             //in Hz
Q=10;
R2=(316*10^3)/10;            //From given tables
R3=(100*10^3)/(3.16*Q-1);    //From given tables
R3=3.3*10^3;                 //Assumed
//R1 is open circuited
R4=(5.03*10^7)/f1;
R5=R4;
R6=1.8*10^3;
R7=10000;        //Assumed a std Value
R8=invr(invr(R6)+invr(R7))
printf('\nFor Q=10 R1 is open circuited\n')
printf('\nFor Q=10 R2 = %.2f k ohm\n',R2/1000)
printf('\nFor Q=10 R3 = %.2f k ohm\n',R3/1000)
printf('\nFor Q=10 R4 = %d k ohm\n',R4/1000)
printf('\nFor Q=10 R5 = %d k ohm\n',R5/1000)
printf('\nFor Q=10 R6 = %.1f k ohm\n',R6/1000)
printf('\nFor Q=10 R7 = %d k ohm\n',R7/1000)
printf('\nFor Q=06 R8 = %.2f k ohm\n',R8/1000)