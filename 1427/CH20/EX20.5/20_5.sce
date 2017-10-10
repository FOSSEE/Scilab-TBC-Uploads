//ques-20.5
//Calculating activity of a sample after 80 years
clc
th=20;//half-life (in years)
Ai=8000;//initial activity (in dis/min)
t=80;//time given (in years)
n=t/th;
Af=Ai*(1/2)^n;
printf("The final activity of the sample is %d dis/min.",Af);
