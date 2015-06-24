clc
disp("Example 5.62")
printf("\n")
disp("calculate the value of R & c for Wein-Bridge oscillator")
printf("Given\n")
//frequency of oscillation
f=1000
//find RC
RC=1/(2*%pi*f)
//select C<10^-6F
C=0.1*10^-6
//the value of R
R=1/(2*%pi*f*C)
printf("the value of c \n%f farad\n",C)
printf("the value of R \n%f ohm\n",R)
