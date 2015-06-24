clc
//initialisation of variables
T= 250 //F
hg= 1164.0 //Btu/lb
P= 29.825 //Psia
Vg= 13.821 //cu ft/lb
//CALCULATIONS
ug= hg-(P*Vg*144/778)
//RESULTS
printf ('Internal energy= %.1f Btu/lb',ug)
