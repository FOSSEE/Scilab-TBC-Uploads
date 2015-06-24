clc
//initialization of varaibles
drop=50 //B/lb
cv=0.95
Vb=700 //fps
alpha=20 //degrees
beta=30 //degrees
Cb=0.95
//calculations
V1=cv*sqrt(2*32.2*778*drop)
y1=V1*cosd(alpha)
z1=V1*sind(alpha)
y1R=y1-Vb
V1R=sqrt(y1R^2 + z1^2)
V2R=Cb*V1R
y2R=-V2R*cosd(beta)
z2=V2R*sind(beta)
Wx=(y1R-y2R)*Vb/32.2
Fa=(z1-z2)/32.2
Vc=1582.77
etanb=Wx/(Vc^2 /(2*32.2))
//results
printf("Work per pound of fluid = %d ft lbf/lbm",Wx)
printf("\n Axial thrust = %.1f lbf/lbm/sec",Fa)
printf("\n Nozzle bucket efficiency = %.2f",etanb)
