//ques-1.13
//Calculating amount of lime and soda and NaCl required
clc
p1=80;//Purity percentage of lime
p2=90;//Purity percentage of soda
V1=1000000;//volume of water for lime and soda calculation
V2=10000;//volume of water for zeolite softener

//Raw treatement
A=300;//content of Ca cation (in ppm)
B=150;//content of Mg cation (in ppm)
C=244;//content of Hydrogen carbonate anion (in ppm)
D=60;//content of CO2 (in ppm)
E=41;//content of NaAlO2 (in ppm)
a1=(A/40)*100;//CaCO3 equivalent of A (in ppm)
a2=(B/24)*100;//CaCO3 equivalent of B (in ppm)
a3=(C/122)*100;//CaCO3 equivalent of C (in ppm)
a4=(D/44)*100;//CaCO3 equivalent of D (in ppm)
a5=(E/164)*100;//CaCO3 equivalent of E (in ppm)

//Treated water
F=65;//content of Hydroxide anion (in ppm)
G=40;//content of Carbonate anion (in ppm)
a6=(F/34)*100;//CaCO3 equivalent of F (in ppm)
a7=(G/60)*100;//CaCO3 equivalent of G (in ppm)

lime=(a2+a3+a4+a5+a6)*(74/100)*V1*(100/p1);//lime required (in mg)
soda=(a1+a2-a3+a5+a6+a7)*(106/100)*V1*(100/p2);//soda required (in mg)
printf("Lime required for softening 1 million litre of hard water is %d kg and Soda required is %d kg.\n",lime/1000000,soda/1000000);

h=(a1+a2)*V2;//hardness of 10000L of water
//50g of CaCO3 = 58.5g of NaCl
n=(58.5/50)*h;//NaCl required (in g)
printf(" Amount of NaCl required is %.3f kg.",n/1000000);
