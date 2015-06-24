clc
//initialisation of variables
h1= 124.27 //Btu/lb
Pr1= 1.2147 //psia
r= 6
p4= 15 //psia
p1= 15 //psia
h2s= 197.5 //Btu/lb
Wnet= 48.9 //Btu/lb air
hs= 18500 //Btu/lb
wfbywa= 0.0146 //lb fuel/lb sir
W= 2545 //Btu/lb air
dh=-91.5 //Btu/lb
Wc= 91.5 //Btu/lb air
//CALCULATIONS
n= Wnet/(wfbywa*hs)
n1= W/Wnet
n2= Wc/Wnet
//RESULTS
printf ('Efficiency = %.3f ',n)
printf (' \n air rate= %.1f lb air/hphr',n1)
printf (' \n back work ratio= %.2f ',n2)
