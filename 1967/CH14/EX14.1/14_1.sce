clc
//initialisation of variables
clear
M2= 92 //gms
M1= 78 //gms
pb= 118.2 //mm
pt= 36.7 //mm
//CALCULATIONS
n1= M2/(M1+M2)
n2= 1-n1
p1= n1*pb
p2= n2*pt
w= p1*M1/(p2*M2)
//RESULTS
printf ('partial pressure of benzene = %.f mm',p1)
printf ('\n partial pressure of toulene = %.1f mm',p2)
printf ('\n weight proportions = %.2f ',w)
