//1.23
clc;
X_mean=501*1/5;
printf("\nAssigned Value=%.1f V",X_mean)
sigma={(1/(5-1))*((100.2-X_mean)^2+(100.3-X_mean)^2+(100.2-X_mean)^2+(100.2-X_mean)^2+(100.1-X_mean)^2)}^0.5;
//disp('For 95% confidance level student factor t is 2.78')
t=2.78;
n=5;
Ur=t*sigma/(n^0.5);
printf("\nUncertanity=%.3f V",Ur)
