clc
//initialisation of variables
t= 4.5*10^9 //years
t1= 1590 //years
//CALCULATIONS
l= log10(2)/(t*0.4343)
l1= log10(2)/(t1*0.4343)
r= l1/l
r1= t/t1
//RESULTS
printf (' disintegration constant= %.2e yr^-1',l)
printf (' \n disintegration constant= %.2e yr^-1',l1)
printf (' \n relative proportion= %.2e ',r)
printf (' \n relative proportion= %.2e ',r1)
