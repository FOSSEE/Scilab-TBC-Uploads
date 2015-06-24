//CLC
x1= 6 //m
x2= 4.5 //m
y1= 3 //m
y2= 3 //m
Fba= 40 //KN
Fbc= 20 //KNm
//CALCULATIONS
MFba= -Fba*(y1+y2)/8
MFbc= Fbc*x1^2/12
x= sqrt(x1^2+x2^2)
DFba= (4/(y1+y2))/((4/(y1+y2))+(4/(x1)))
DFbc= 1-DFba
DFcb= (4/x1)/((4/x1)+(3/x))
DFcd= 1-DFcb
//RESULTS
printf("DFba = %.2f",DFba)
printf("DFbc = %.2f",DFbc)
printf("DFcb = %.3f",DFcb)
printf("DFcd = %.3f",DFcd)
