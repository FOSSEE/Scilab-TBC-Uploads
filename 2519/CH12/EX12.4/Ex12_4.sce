clc
clear
//Initialization of variables
ms=10 //lbm
den=62.3 //lbm/ft^3
A1=0.0218 //ft^2
A2=0.00545 //ft^2
p2=50 //psia
p1=100 //psia
gc=32.2 //ft/s^2
dz=30 //ft
//calculations
V1=ms/(A1*den)
V2=ms/(A2*den)
df=-144/den*(p2-p1) - (V2^2 -V1^2)/(2*gc) - dz
//results
printf("Friction = %.1f ft-lbf/lbm",df)
