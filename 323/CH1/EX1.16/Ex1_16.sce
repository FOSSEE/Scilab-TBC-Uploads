//Chapter1,Example 1.16,Pg1.20
clc;
disp("Refer to the figure given in the problem")
R1=4*4/(4+4) //Equivalent resistance of the upper triangle shown in the figure obtained by the reduction of the upper left and right triangular resistance networks
R2=3*3/(3+3)
R3=(2*(R1+R2))/(2+R1+R2)
R=1/((1/5)+(1/2)+(1/(R3+1)))
printf("\n Equivalent resistance =%.2f ohms \n",R)
I=50/R
printf("\n Current = %.2f A \n",I)