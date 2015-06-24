clc
//Initialization of variables
Qh=-1000 //Btu
Ql=1000 //Btu
Th=1460 //R
Tl=960 //R
//calculations
Sh=Qh/Th
Sl=Ql/Tl
S=Sh+Sl
//results
printf("Change in entropy of the universe = %.3f B/R",S)
