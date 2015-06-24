//Ex8_3 pg-435
clc

openA=60000 //open loop gain 
closeA=10000 //closed loop gain
Beta=((openA/closeA)-1)/closeA
printf("Negative Feedback factor = %.4f \n",Beta)
BA=Beta*openA //value of Beta*A
printf(" Beta*A = %.0f",BA)
