// Example 6.9, Page No-284
clear
clc

fh=50000
C=0.001*10^-6
R=1/(2*%pi*fh*C)
Rkohm=R/1000
printf('R= %.3f kohm', Rkohm)

R1=R/1.082
R2=R/0.9241
R3=R/2.613
R4=R/0.3825
printf('\nR1= %.3f kohm', R1/1000)
printf('\nR2= %.3f kohm', R2/1000)
printf('\nR3= %.3f kohm', R3/1000)
printf('\nR4= %.3f kohm', R4/1000)
Hif=0.02
s=(Hif^2)/(1-Hif^2)
s1=s^0.125
f=fh/1.6815 * s1
fkhz=f/1000
printf('\nf= %.2f kHz', fkhz)


