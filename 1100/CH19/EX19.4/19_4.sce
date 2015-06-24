clc
//initialisation of variables
wh= 40000 //lb.hr
cph= 0.5 //Btu/lb F
th1= 170 //F
th2= 120 //F
cpc= 1 //Btu/lb F
tc2= 140 //F
tc1= 100 //F
t= 140 //F
U= 120 //Btu/sq ft hr F
//CALCULATIONS
dh= t-th2
dc= tc2-tc1
wc= (wh*cph*(th1-th2))/(cpc*dc)
dtm= (-(tc1-th2)-(th1-tc2))/log((tc1-th2)/(-th1+tc2))
q= wh*cph*(th1-th2)
A= q/(U*dtm)
th2= ((wh/wc)*(cph/cpc)*th1+tc1)/((wh/wc)*(cph/cpc)+1)
wc1= (wh*cph*(th1-th2))/(cpc*(th2-tc1))
//RESULTS
printf ('Water flow rate= %.f lb/hr',wc)
printf (' \n Area of heat transfer surface= %.f sq ft',A)
printf (' \n temperature of the oil= %.f F',th2)
printf (' \n flow rate= %.f lb/hr',wc1*2)
