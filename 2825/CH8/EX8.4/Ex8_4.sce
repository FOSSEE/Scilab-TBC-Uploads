//Ex8_4 pg-435
clc

Df=0.5/100 //distortion after negative feedback
D=8/100 //harmonic distortion 

BA=D/Df-1 //value of Beta*A
A=200
Beta=BA/A //feedback factor
printf("Feedback factor = %.3f \n",Beta)
Af=A/(1+BA) //Gain after -ve feedback
printf("Gain after negative feedback = %.1f",Af)
