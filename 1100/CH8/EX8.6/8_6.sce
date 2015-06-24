clc
//initialisation of variables
Q= 826 //Btu/lb
T= 400 //F
T1= 1000 //F
T2= 2000 //F
T3= 80 //F
//CALCULATIONS
Sw= Q/(T+460)
Sg= (Q/T1)*(log(T1+460)-log(T2+460))
S= Sw+Sg
Q1= (T3+460)*S
Q2= Q+(T3+460)*Sg
n= Q1/Q2
n1= n*100
//RESULTS
printf ('Loss percent = %d ',n1+1)
