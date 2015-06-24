
clc
//initialisation of variables
 H=2//ft
 g=32.2//ft/sec^2
 D=1/12
 vi=3.18*10^-5//engineer units
 //CALCULATIOS
 v=sqrt(2*g*H)
 k=62.4*D*v/(g*vi)
 k1=log(k)
 cd1=0.62//from curve
 //RESULTS
 printf (' value of cd= %.2f',cd1)
