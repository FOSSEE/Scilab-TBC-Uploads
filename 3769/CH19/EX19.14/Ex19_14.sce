clear
//Given
f0=1.0
u0=-1.1                            //cm
D=25
fe=5.0
ve=25.0

//Calculation
v0=1/((1/f0)+1/u0)
d=v0+fe
M=-(v0*D)/(u0*fe)
ue=-1/((1/ve)+1/fe)
D1=v0-ue
M1=-(v0/u0)*(1+(D/fe))

//Result
printf("\n (i) Distance between the lenses when image is at infinity %0.3f  cm", d)
printf("\n (ii) Distance between the lenses when image is at distinct vision %0.2f  cm",D1)
