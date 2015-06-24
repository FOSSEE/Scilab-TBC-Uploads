clc
//Initialization of variables
p=3 //psi
x=0.35
//calculations
printf("From steam tables,")
p=3 //psi
vf=0.01630 //ft^3/lbm
vg=118.71 //ft^3/lbm
hf=109.37 //Btu/lbm
hfg=1013.2 //Btu/lbm
vx=vf+x*(vg-vf)
hx=hf+x*(hfg)
//results
printf("specific volume = %.1f ft^3/lbm",vx)
printf("\n specific enthalpy = %.1f Btu/lbm",hx)
