clc 
//initialisation of variables
nb= 0.4
pb= 385 //mm
nt= 0.6
pt= 139 //mm
//CALCULATIONS
Pb= pb*nb
Pt= pt*nt
PT= Pb+Pt
Xt= Pt/PT
//RESULTS
printf ('mole fraction of benzene vapour= % 3f ',Xt)
