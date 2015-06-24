//example 7.4, page 165
clc
pr=100//in kw
N=18//in min
tou=90//in min
R=30//in min
tou_1=120//in min
a=N/tou
b=R/tou_1
px=pr*sqrt((1-exp(-(a+b)))/(1-exp(-(a))))
printf("The power is %f kw",px)