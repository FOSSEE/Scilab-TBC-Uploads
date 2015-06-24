clc
//Chapter7
//Ex_13
//Given
fs=1 //in MHz
k=0.1
fa=fs/(sqrt(1-k^2))
disp(fa,"fa value in MHz for given fs is")
printf("thus fa-fs is only %f kHz, which means they are very close ",(fa-fs)*10^3)
