//CLC
x1= 7 //m
x2= 7 //m
x3= 4 //m
x4= 4 //m
x5= 4 //m
x6= 12 //m
x7= 4 //m
Fab= 12 //KN
Fbc1= 7 //KN
Fbc2= 7 //KN
Fcd= 22 //KN
Fe= 5 //KN
//CALCULATIONS
MfAB= -Fab*(x1+x2)/(x3+x4)
MfBC= -(Fbc1*x3*(x4+x5)^2/(x6)^2)-(Fbc2*x3^2*(x4+x5)/(x6)^2)
MfCD= -Fcd*x6/x6
MfDE= -Fe*x7
DFba= (3/(x1+x2))/((3/(x1+x2))+(4/(x3+x4+x5)))
DFbc= 1-DFba
DFcb= (4/(x3+x4+x5))/((3/(x6))+(4/(x3+x4+x5))) 
DFcd= 1-DFcb
//RESULTS
printf("DFba = %.2f",DFba)
printf("DFbc = %.2f",DFbc)
printf("DFcb = %.2f",DFcb)
printf("DFcd = %.2f",DFcd)
