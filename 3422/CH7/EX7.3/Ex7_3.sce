//Example 7.3, page 162
clc
alpha=0.9
N=.5//in hr
tou=1.5//in hr
pr=25//in kw
px=pr*sqrt(((1+alpha)/(1-exp(-N/tou)))-.9)
printf("Power id %f kw",px)