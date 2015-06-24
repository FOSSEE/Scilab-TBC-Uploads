clc
//initialization of varaibles
Q=826 //B/lb
T=860 //R
T1=2000+460 //R
T2=1000+460 //R
//calculations
ds=Q/T
dsgas=Q*(log(T2)-log(T1))/(T1-T2)
dst=ds+dsgas
//results
printf("Total entropy change = %.3f B/R",dst)
