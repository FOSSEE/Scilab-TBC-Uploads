clear
//A concrete block of size 0.60 m × 0.75 m × 0.5 m is cast with a hole of diameter 0.2 m and depth 0.3 m
//The hole is completely filled with steel balls weighing 2500 N. Locate the centre of gravity of the body.

//

//variable declaration

W=25000.0                    // weight of concrete=25000, N/m^3
W1=0.6*0.75*0.5*W           //Weight of solid concrete block
W2=%pi*(0.2**2)*0.3*W/4  //Weight of concrete (W2) removed for making hole:
W3=2500

//Taking origin as shown in the figure, the centre of gravity of solid block is (0.375, 0.3, 0.25) and that of hollow portion is (0.5, 0.4, 0.15)

X1=0.375
X2=0.5
X3=0.5

Y1=0.3
Y2=0.4
Y3=0.4

Z1=0.25
Z2=0.15
Z3=0.15

Wt=W3+W1-W2
printf("\n %0.3f %0.3f %0.3f %0.3f ",W,W1,W2,Wt)

xc=(W1*X1-W2*X2+W3*X3)/Wt

yc=(W1*Y1-W2*Y2+W3*Y3)/Wt

zc=(W1*Z1-W2*Z2+W3*Z3)/Wt

printf("\n xc= %0.3f  m",xc)
printf("\n yc= %0.3f  m",yc)
printf("\n zc= %0.3f  m",zc)
