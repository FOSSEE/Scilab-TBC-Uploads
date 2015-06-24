// Example 6.3, Page No-272
clear
clc

fh=10*10^3
f=12*10^3
RC=1/(2*%pi*fh)
R=200*10^3
C=RC/R
C3=1.414*C
C4=0.707*C

t=(f^4/fh^4)
Hif=1/(sqrt(1+t))
Hifdb=20*log(Hif)/log(10)
printf('Hif= %.2f dB', Hifdb)



