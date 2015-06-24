clc
//initialisation of variables
Ti= 300 //F
T0= 100 //F
l= 0.25 //in
li= 3 //in
A= 12 //in/ft
ks= 31.4 //Btu/hr ft F
ki= 0.04 //Btu/hr ft F
//CALCULATIONS
q= (Ti-T0)/((l/(A*ks))+(li/(A*ki)))
t= Ti-((q*l/12)/ks)
//RESULTS
printf ('Heat loss= %.f Btu/hr',q)
printf (' \n Temperature at the interface of the steel and the insulation= %.2f F',t)
