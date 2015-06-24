// Example 7.4 page no-404
clear
clc
S=0.1
Sdash=0.01
k=S/Sdash   //k=1+BAv

Avdash=100
Av=Avdash*k

B=(k-1)/Av
printf("By providing negative feedback,with\nBeta = %.3f\nwe can improve the stability to 1%%.",B)
