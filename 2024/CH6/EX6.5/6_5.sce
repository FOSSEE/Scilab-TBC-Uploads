clc
//Initialization of variables
Qrev=81.4 //Btu/lbm
T1=355.21 //F
T2=500 //F
cp=0.562
//calculations
cp=Qrev/(T2-T1)
ds=cp*(log((460+T2)/(460+T1)))
s1=1.5728
s2=s1+ds
//results
printf("Change in entropy = %.4f Btu/lbm F",ds)
printf("\n Final entropy = %.4f Btu/lbm F",s2)
