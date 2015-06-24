clc
// initialization of variables
clear
SF=1.75
p1=300 //MPa
S_rr=-SF*p1
S_th=SF*325
Y=1/sqrt(2)*sqrt((S_th-S_rr)^2+S_rr^2+S_th^2)
printf(' Y = %.1f MPa',Y)
