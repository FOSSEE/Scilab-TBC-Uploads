clc
//Initialization of variables
E=50*10^3 //J/mol
T1=25+273 //K
T2=37+273 //K
//calculations
ln=E/8.3145 *(1/T1-1/T2)
factor=%e^(ln)
//results
printf("kdash = %.2f k",factor)
