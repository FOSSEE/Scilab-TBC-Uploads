clc
//initialisation of variables
W1= 5 //KN/m
W2= 5 //KN/m
F= -40 //KN
l1= 6 //m
l2= 5 //m
l3= 5 //m
l4= 6 //m
//CALCULATIONS
Mfab= -W1*l1^2/12
Mfbc= F*l2/8
DFab= (3/l1)/((3/l1)+(2/(l2+l3)))
DFbc= 1-DFab
//RESULTS
printf ('MFab= %.f KN m',Mfab)
printf (' \n MFbc= %.f KN m',Mfbc)
printf (' \n DFab= %.2f ',DFab)
printf (' \n DFbc= %.2f.',DFbc)  
