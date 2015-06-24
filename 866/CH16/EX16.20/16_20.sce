clc
//initialisation of variables
W= 6 //KN/m
F= 40 //KN
l1= 5 //m
l2= 3 //m
l3= 3 //m
l= 12 //mm
Smab= 9*10^6 //mm^4
Smbc= 12*10^6 //mm^4
E= 200000 //N/mm^2
//CALCULATIONS
MFab= (-W*l1^2/12)+((-W*Smab*E*l))/((l1*10^3)^2*10^6)
MFba= (W*l1^2/12)+((-W*Smab*E*l))/((l1*10^3)^2*10^6)
MFbc= -(F*(l2+l3)/8)+(3*E*Smbc*l)/(((l2+l3)*10^3)^2*10^6)
MFcb= (F*(l2+l3)/8)
DFba= ((4*E*Smab)/l1)/(((4*E*Smab)/l1)+((3*E*Smbc)/(l2+l3)))
DFbc= 1-DFba
//RESULTS
printf ('MFab= %.1f KN m',MFab)
printf (' \n MFbc= %.1f KN m',MFba)
printf (' \n MFbc= %.1f KN m',MFbc)
printf (' \n MFbc= %.1f KN m',MFcb)
printf (' \n DFab= %.2f ',DFba)
printf (' \n DFbc= %.2f.',DFbc)
