clc
//Intitalisation of variables
clear
k= 0.059 //volt
c= 10^-7 //M
e= 2.71 //volt
c1= 6 //M
e1= -0.4 //volt
e2= -1.36 //volt
e3= 0.6 //volt
//CALCULATIONS
E1= -log10(c)*k
E2= e-k*log10(c1)
E3= e1+k*log10(c)
E4= e2+k*log10(c1)
E5= E3-e3
//RESULTS
printf ('EH = %.2f volt ',E1) 
printf ('\n ENa = %.2f volt ',E2) 
printf ('\n EO = %.2f volt ',E3) 
printf ('\n ECl = %.2f volt ',E4) 
printf ('\n Oxygen evolution potential = %.2f volt ',E5) 
