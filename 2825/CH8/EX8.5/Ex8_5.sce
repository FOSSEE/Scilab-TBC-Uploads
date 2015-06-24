//Ex8_5 pg-436
clc

A=100 //voltage gain
per=10/100 //percentage of negative feedback applied
BA=A*per //value of Beta*A
Af=A/(1+BA) //gain after negative feedback
printf("Decrement in distortion,D-Df = D-(D/(1+Beta*A)) \n")
printf("                              = %.1f\n ",Af)
per_dis=(BA/(1+BA))*100 //percentage change in distortion 
printf("Percentage change in distortion = %.0f %% \n",per_dis)
red=100-per_dis //reduction
printf(" Therefore reduction is = %.0f %%",red)
