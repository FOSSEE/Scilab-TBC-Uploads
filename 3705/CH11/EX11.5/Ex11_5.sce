
clear//

//Variable Declaration
A1=4 //Area in in^2
A2=6 //Area in in^2
r1=7.8 //Radius in inches
r2=14.8 //Radius in inches
t=0.5 //Thickness in inches
d=4 //Depth in inches
sigma_w=18 //Maximum allowable stress in kips

//Calculations
A=A1+A2 //Area in in^2
r_bar=(A1*(r1+t)+A2*(r2+d))*(A1+A2)**-1 //Centroidal Axis in inches
//Simplfying the computation
a=(r1+2*t)/r1
b=r2/(r1+t*2)
integral=d*log(a)+2*t*log(b) //
R=A/integral //Radius of neutral Surface in inches

//Maximum Stress
//Answers are in variable terms hence not computable

P=sigma_w/0.7847 //Maximum Allowable load in kips

//Result
printf("\n The maximum allowable load is %0.1f kips",P)
