clc
clear
//Initalization of variables
Qs=825.1 //Btu/lb
ds=0.9588
t1=101.74 //F
th=400.95 //F
//calculations
Qr=ds*(t1+459.69)
work=Qs-Qr
eta=work/Qs*100
eta2=(th-t1)/(th+459.69) *100
//results
printf("In case 1, Thermal efficiency = %.2f percent",eta)
printf("\n In case 2, Thermal efficiency = %.2f percent",eta2)
