//Ex8_1 pg-434
clc

A=120 //amplification gain
Vi=50*10^(-3) //input voltage
Beta=0.1 //feedback factor

Vo= A*Vi //output voltage without feedback
printf("Input signal = %.2f V \n",Vo)

Vs=Vi-Beta*Vo 
//input signal +ve output because of -ve feedback (calue in texxtbook is wrong)
printf(" Input signal = %.2f V \n",abs(Vs))

vg=A/(1+Beta*A) //voltage gain 
printf(" Gain after feedback = %.1f \n",vg)

fb=(-1)*20*log10(1+(Beta*A))
printf(" Feedback (db)= %.3f \n",fb)
