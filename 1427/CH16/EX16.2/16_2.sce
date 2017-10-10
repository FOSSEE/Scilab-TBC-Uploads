//ques-16.2
//Calculating required concentration after 30 minutes
clc
//1st order reaction
k=1.35*10^-4;//rate constant (in /s)
t=30;//time (in minutes)
a=0.03;//initial concentration (in mol/L)
//k = (2.303/t)*log10(a/a-x)
x=(a*0.274)/1.274;
printf("The concentration required after %d minutes is %.5f mol/L.",t,a-x);
