clc
//initialisation of variables
w= 10 //KN/m
L= 6 //m
sigmaxallowable= 155 //N/mm^2
Modulusofuniversalbeam= 307600 //mm^3
Satisfactorybeam= 254*102*28 
//CALCULATIONS
Mmaxnormal= (w*L^2)/8
Zemin= (Mmaxnormal)/sigmaxallowable
Totalload= w+((28*9.81)/10^3)
Mmaxload= (Totalload*L^2)/8
Allowablestress= (Mmaxload*10^3*10^3)/Modulusofuniversalbeam
//RESULTS
printf ('Satisafactorybeam=% 2f (254*102*28)',Satisfactorybeam)
