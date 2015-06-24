//Chapter1,Example1.15,Pg1.19
clc;
disp("Refer to the figure shown in the problem")
R1=4*4/(4+4) //Equivalent resistance of the upper triangular network
R2=3*3/(3+3) //Equivalent resistance of the triangular network on right
R3=2*(R1+R2)/(2+R1+R2)
R=2*(R3+1)/(2+R3+1)
printf("\n Equivalent resistance =%.2f ohms \n",R)
I=30/R
printf("\n Current=%.1f A \n",I)

  