// 2.23
clc;
Rth0=100;
ath0=0.00392;
dth=65-25;
R65=Rth0*[1+ath0*dth];
printf("resistance at 65 degree C= %.2f ohm ",R65)
th={[(150/100)-1]/ath0}+25;
printf("\n Temperature = %.2f degree C ",th)