//1.21
clc;
X_mean=(15+20+25+30+35+45)/6;
printf("The sample mean of the temperature=%.2f degree C",X_mean)
Y_mean=(1.9+1.93+1.97+2+2.01+2.01+1.94+1.95+1.97+2.02+2.02+2.04)/12*10^-6;
printf("\nThe sample mean of the faliure=%.6f failures/hour",Y_mean)
disp('from these values we get')
a=1.80*10^-6;
b=0.00226;
disp('Y=1.80+0.00226x    is the required least square line')