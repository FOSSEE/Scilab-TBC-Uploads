clc
//initialisation of variables
F=35.5*10^4//N
p=100*10^5//bars
q=%pi//ft
//CALCULATIONS
D=sqrt((4*F)/(q*p))*1000//mm
//RESULTS
printf('The cylinder size is =% f mm',D)
