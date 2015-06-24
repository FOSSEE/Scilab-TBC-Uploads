clc
//Initialization of variables
basis=100 //lbm
x1=0.6
ash=12 //lbm
N2=79.7
M=29
//calculations
x=ash/x1
C=(1-x1)*x
O2=N2/3.76
a= (14.6+0.2)/(5.83-0.75)
AF=(O2+N2)*M/(a*100)
//results
printf("Air fuel ratio = %.2f lbm air/lbm fuel as fired",AF)
