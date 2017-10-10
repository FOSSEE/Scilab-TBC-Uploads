// Problem no 14.1,Page No.325

clc;clear;
close;
b=2 //m //width 
FOS=1.5 //Factor of safety
//rho_mason=2.5*rho_w
mu=0.5 //coeffeicient of friction

//Calculations

//Let L=1 m (length of dam)
L=1
//W=b*H*L*rho
//After substituting values and Further simplifying we get
//W=2*H*rho

//Total Pressure
//P=W*H**2*2**-1

x_bar=b*2**-1 //Distance of Line of action of W from waterface

//Distance of pt where resultant cuts the base measured from Line of action
//x=P*W**-1*H*3**-1
//After substituting values and Further simplifying we get
//x=H**2*30**-1

//x_bar+x=2*b*3**-1
//After substituting values and Further simplifying we get
//1+H**2*30**-1=2*b*3**-1
H=(30*(2*b*3**-1-1))**0.5 //height of dam

//Frictional Resistance offered at the base
//F=mu*W
//After substituting values and Further simplifying we get
//F=3.16*rho

//Total Lateral Pressure
//P=W*H**2*2**-1
//P=4.99*W

//Factor of safety against sliding
//FOS1=F*P**-1=3.16*4.99**-1*rho_mason*rho_w**-1
FOS1=3.16*4.99**-1*2.5

//FOS1>FOS

//Result
printf("Dam is safe against sliding  = %.2f m",FOS1)
