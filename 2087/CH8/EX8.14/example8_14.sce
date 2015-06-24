

//example 8.14
//check stability
//calculate stresses at  toe and heel
clc;funcprot(0);
//given
c=1;
H=10;             //heigth of dam
hw=10;            //heigth of water in reservior
wb=8.25;          //bottom width
Bt=1;             //top width
Hs1=0.1;          //slope on upstream side
gamma_w=9.81;     //unit weigth of water
gamma_m=22.4;     //unit weigth of masonary
f=1400;           //permissible shear stress at joint
miu=0.75;         //coefficient of friction
fi=atan(0.625);
theta=atan(0.1);

W1=Bt*H*gamma_m;
W2=H*H*Hs1*gamma_m/2;
W3=H*6.25*gamma_m/2;
W4=hw*gamma_w*H*Hs1/2;
P=gamma_w*hw^2/2;
U=wb*gamma_w*hw*c/2;
SumV=W1+W2+W3+W4-U;
L3=2*(wb-(Hs1*H)-Bt)/3;
L1=(wb-(Hs1*H)-Bt)+Bt/2;
L2=(wb-(Hs1*H)-Bt)+Bt+(Hs1*H/3);
L4=(wb-(Hs1*H)-Bt)+Bt+(2*Hs1*H/3);
L5=2*wb/3;L6=hw/3;
M1=W1*L1;M2=W2*L2;M3=W3*L3;M4=W4*L4;
M5=U*L5;M6=P*L6;
SumM=M1+M2+M3+M4-M5-M6;
Mplus=M1+M2+M3+M4;
Mminus=M5+M6;
FOS=miu*SumV/P;
SFF=(miu*SumV+wb*1400)/P;
FOO=Mplus/Mminus;
FOS=round(FOS*100)/100;
SFF=round(SFF*10)/10;
FOO=round(FOO*100)/100;
mprintf("Factor of safety against sliding=%f. >1 ",FOS);
mprintf("\nShear friction factor=%f.",SFF);
mprintf("\nFactor of safety against overturning=%f. <1.5",FOO);
mprintf("\nDam is unsafe against overturning");

x=SumM/SumV;
e=wb/2-x;
p=hw*gamma_w;
pnt=(SumV/wb)*(1+(6*e/wb));      //calculation is done wrong in book;value of b is not taken correctly
pnh=(SumV/wb)*(1-(6*e/wb));
sigmat=pnt*sec(fi)^2;
sigmah=pnh*sec(theta)^2-p*tan(theta)^2;
taut=pnt*tan(fi);
tauh=-(pnh-p)*tan(theta);
pnt=round(pnt*10)/10;
pnh=round(pnh*10)/10;
sigmat=round(sigmat*10)/10;
sigmah=round(sigmah*10)/10;
taut=round(taut*10)/10;
tauh=round(tauh*10)/10;
mprintf("\n\nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%f kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%f kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%f kN/square.m.",taut);
mprintf("\nShear stress at heel=%f kN/square.m.",tauh);
