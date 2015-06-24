//CLC
x1= 4 //m
x2= 4 //m
x3= 4 //m
x4= 16 //m
F1= 12 //KN
F2= 12 //KN
F3= 1 //KNm
y= 12 //m
//CALCULATIONS
MFab= -(F1*x1*(x2+x3)^2/(y)^2)-(F2*x3^2*(x1+x2)/(y)^2)
MFbc= -F3*x4^2/y
DFad= (4/y)/((4/(x1+x2+x3))+(4/y))
DFab= 1-DFad
DFba=  (4/(x1+x2+x3))/((4/x4)+(3/y)+(4/(x1+x2+x3)))
DFbc= (4/x4)/((4/x4)+(3/y)+(4/(x1+x2+x3)))
DFbe= 1-DFba-DFbc
//RESULTS
printf("DFab = %.2f",DFab)
printf("DFbc = %.2f",DFbc)
printf("DFba = %.2f",DFba)
printf("DFad = %.2f",DFad)
