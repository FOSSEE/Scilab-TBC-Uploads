//Example number 1.7, Page number 1.37

clc;clear;close


//Variable declaration
Beta=0.00227     //distance between adjascent green lines
D=2.5           // in m  
d=0.0006        //distance between narrow slits

//Calculation
lamda=(Beta*d)/D // in m

//Result
printf("Wavelength,lamda=%.4e m",(lamda))
//Answer varies due to rounding of number"
