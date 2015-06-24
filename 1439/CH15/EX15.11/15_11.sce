clc
//initialisation of variables
pKa= 6.84
n= 0.04 //mole
n1= 0.02 //mole
n2= 0.001 //mole
pH3= 7
//CALCULATIONS
pH= pKa+log10(n/n1)
pH1= pKa+log10((n-n2)/(n1+n2))
dpH= pH-pH1
pH2= -log10(n2)
dpH1= pH3-pH2
//RESULTS
printf ('pH = %.2f ',pH1)
printf ('\n dpH = %.2f ',dpH)
printf ('\n dpH = %.2f ',dpH1)
