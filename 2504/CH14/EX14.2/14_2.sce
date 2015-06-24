clc
//initialisation of variables
clear
wcb= 2 //ton
wc= 100 //ton
wa= 6.5 //ton
wca= 20 
r= 0.8
r1= 1.2
//CALCULATIONS
wca1= wc/wa
wca2= wcb*(wca1/wca)^1.5
Wca= wcb*r^(9/4)*(1/r1)^(9/4)*(wca1/wca)^1.5
//RESULTS
printf ('(Wc/W)a = %.2f ',wca1)
printf ('\n Wc,a = %.2f ton',wca2)
printf ('\n Wc,a = %.2f ton',Wca)
