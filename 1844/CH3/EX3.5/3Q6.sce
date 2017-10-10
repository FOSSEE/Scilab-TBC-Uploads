clc
//Present lenght of 9.7 cm is equivalent of 10 cm original length 
PA=100.2 // Present Area in sq cm
OAp= (10/9.7)^2 *PA // original area on plot in sq cm
S=10 // Scale on plan is 1cm= 10 m
OAs=OAp* S^2
printf('Original area of survey = %f sq m\n',OAs)
L=20 // chain length in m
L1=L-0.08 // original chain length in m

CA= (L1/L)^2 *OAs

printf(' True area of the survey = %f sq m',CA)
