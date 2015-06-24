
//data
Zo=100
ZL=complex(50,-75)
B=2*%pi
XL=-0.75
RL=0.5
Y_L=Zo/ZL
//formulas and result
printf("\nresult:-")
G_L=real(Y_L)
B_L=imag(Y_L)
disp(Y_L,"Y_L=")
A=G_L*(G_L-1)+B_L^2
printf("\nA=%.4f",A)
ds=1/B*atan((XL+sqrt(XL^2-A*(1-RL)))/A)
printf("\nds=%f*lambda",ds)                 //calculation mistake in book
ds=1/B*atan((XL-sqrt(XL^2-A*(1-RL)))/A)
printf("\nds=%f*lambda",ds)
X_s=-1.2748
Ls=1/B*acot(X_s)
printf("\nLs=%f*lambda",Ls)
X_s=1.2748
Ls=1/B*acot(X_s)
printf("\nLs=%f*lambda",Ls)