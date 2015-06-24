clc
//Initialization of variables
P1=50 //psia
T1=540 //K
g=32.2
R=1715
k=1.4
P3=13.5 //psia
A2=0.0218 //ft^2
cp=6000
//calculations
Pc=0.528*P1
V32=R*T1/g *k/(k-1) *(1- (P3/P1)^((k-1)/k))
V3=sqrt(V32*2*g)
G3=g*A2*P1*144/sqrt(T1) *sqrt(k/R *(2/(k+1))^((k+1)/(k-1)))
T3= T1 - V3^2 /(2*cp) 
gam3= g*P3*144/(R*T3)
gam2= (Pc/P3 *gam3^k )^(1/k)
V2=G3/gam2/A2
T2= (V3^2 -V2^2)/(2*cp) + T3
A3=G3/gam3/V3
D3= sqrt(4/%pi *A3)
G2=G3
//results
printf("\n velocity at section 3 = %d fps",V3)
printf("\n Flow rate at section 3 = %.3f lb/s",G3)
printf("\n temperature at section 3  = %d R",T3)
printf("\n velocity at section 2 = %d fps",V2)
printf("\n Flow rate at section 2 = %.3f lb/s",G2)
printf("\n temperature at section 2  = %d R",T2)
printf("\n Required Diameter = %.2f in",D3*12)
