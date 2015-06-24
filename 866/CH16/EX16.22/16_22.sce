//CLC
x1= 5 //m
x2= 10 //m
y= 10 //m
Fb= 2 //KN
Fbc= 4 //KN
Rbc= 2
//CALCULATIONS
MFbc= -Fbc*x1*x2^2/(x1+x2)^2
MFcb= Fbc*x2*x1^2/(x1+x2)^2
DFba= (4/y)/((4/y)+(4*Rbc/(x1+x2)))
DFbc= 1-DFba
//RESULTS
printf("DFba = %.2f",DFba)
printf("DFbc = %.2f",DFbc)
