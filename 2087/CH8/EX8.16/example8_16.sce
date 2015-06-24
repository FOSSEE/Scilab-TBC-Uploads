

//example 8.16
//Check the stability and determine principal and shear stress at toe and heel
clc; funcprot(0);
//Given
c=1;
miu=0.7;          //coefficient of friction
H=70;              //heigth of dam
ht=0;              //heigth of tail water
Lf=6.5;           //location of foundation gallery from heel
wb=52.5;           //width of base
Bt=7;              //width of top of dam
hw=70;             //heigth of water in reservior
Hs1=35;            //heigth of slope on upstream side
Hs2=60;            //heigth of slope on downstream side
gamma_m=24;        //unit weigth of concrete
gamma_w=9.81;        //unit weigth of water
theta=atan(0.1);
fi=atan(0.7);
//self weigth of dam
W1=(Hs1*3.5*gamma_m)/2,
W2=(Bt*H*gamma_m),
W3=(Hs2^2*0.7*gamma_m)/2,
//weigth of superimposed water
W4=(Hs1*3.5*gamma_w)/2,
W5=(hw-Hs1)*3.5*gamma_w,
wp=hw^2*gamma_w/2;                   //water pressure
Pt=gamma_w*ht,
Ph=gamma_w*hw,
Pg=(ht+(hw-ht)/3)*gamma_w,
U=(Pt*(wb-Lf))+(Pg*Lf)+((Ph-Pg)*Lf/2)+((Pg-Pt)*(wb-Lf)/2)*c,
l1=(wb-Lf)/2,l2=(2*(wb-Lf))/3,l3=(wb-Lf)+(Lf/2),l4=(wb-Lf)+((2*Lf)/3),
L7=(((Pt*(wb-Lf))*l1)+((Pg-Pt)*(wb-Lf)*l2/2)+((Pg*Lf)*l3)+((Ph-Pg)*Lf*l4/2))/U,
L1=(wb-3.5)+3.5/3,
L2=(0.7*Hs2)+(Bt/2),
L3=(2*Hs2*0.7)/3,
L4=(wb-3.5)+(2*3.5)/3,
L5=(wb-3.5)+(3.5/2),
L6=hw/3;
M1=W1*L1,M2=W2*L2,M3=W3*L3,M4=W4*L4;
M5=W5*L5;
M6=wp*L6;
M7=U*L7;
SumV1=W1+W2+W3;
SumM1=M1+M2+M3;
SumV2=SumV1+W4+W5;
SumM2=SumM1+M4+M5-M6;
SumV3=SumV2-U;
SumM3=SumM2-M7;
Mplus=1547377;
Mminus=870421;
SumH=wp;

//case 1. Reservior empty
x=SumM1/SumV1;
e=wb/2-x;
pnt=(SumV1/wb)*(1+(6*e/wb));
pnh=(SumV1/wb)*(1-(6*e/wb));
sigmat=pnt*sec(fi)^2;
sigmah=pnh*sec(theta)^2;
taut=pnt*tan(fi);
tauh=pnh*tan(theta);
pnt=round(pnt*10)/10;
pnh=round(pnh*10)/10;
sigmat=round(sigmat*10)/10;
sigmah=round(sigmah*10)/10;
taut=round(taut*10)/10;
tauh=round(tauh*10)/10;
mprintf("case 1. Reservior empty:");
mprintf("\nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%f kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%f kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%f kN/square.m.",taut);
mprintf("\nShear stress at heel=%f kN/square.m.",tauh);

//case2. reservior full without uplift
x=SumM2/SumV2;
e=wb/2-x;
p=hw*gamma_w;
pnt=(SumV2/wb)*(1+(6*e/wb));
pnh=(SumV2/wb)*(1-(6*e/wb));
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
mprintf("\n\ncase 2. reservior full without uplift:");
mprintf("\nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%f kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%f kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%f kN/square.m.",taut);
mprintf("\nShear stress at heel=%f kN/square.m.",tauh);

//case3. reservior full with uplift
x=SumM3/SumV3;
e=wb/2-x;
p=hw*gamma_w;
pnt=(SumV3/wb)*(1+(6*e/wb));
pnh=(SumV3/wb)*(1-(6*e/wb));
sigmat=pnt*sec(fi)^2;
sigmah=pnh*sec(theta)^2-p*tan(theta)^2;
taut=pnt*tan(fi);
tauh=-(pnh-p)*tan(theta);
pnt=round(pnt);
pnh=round(pnh);
sigmat=round(sigmat);
sigmah=round(sigmah);
taut=round(taut);
tauh=round(tauh);
mprintf("\n\ncase 3. reservior full with uplift:");
mprintf("\nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%f kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%f kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%f kN/square.m.",taut);
mprintf("\nShear stress at heel=%f kN/square.m.",tauh);

FOS=miu*SumV3/SumH;
SFF=(miu*SumV3+wb*1400)/SumH;
FOO=Mplus/Mminus;
Ffi=1.5;Fc=3.6;
F=(miu*SumV3/Ffi+1400*wb/Fc)/SumH;
FOS=round(FOS*1000)/1000;
SFF=round(SFF*100)/100;
FOO=round(FOO*100)/100;
F=round(F*1000)/1000;
mprintf("\n\nFactor of safety against sliding=%f.",FOS);
mprintf("\nShear friction factor=%f.",SFF);
mprintf("\nFactor of safety against overturning=%f.",FOO);
mprintf("\nFactor of safety for load combination B=%f. > 1",F);
mprintf("\nDam is safe ");

//Case4.considering seismic forces
Cm=0.712;
alphah=0.1;
alphav=0.08;
hp=0.726*Cm*alphah*gamma_w*hw^2;     //hydrodynamic pressure
Mhp=0.299*Cm*alphah*gamma_w*hw^3;    //moment due to hydrodynamic pressure
//inertial load due to horizontal acceleration
I1=W2/10;
I2=W3/10;
I3=W1/10;
v=SumV1*alphav;
Mv=116444;
SumV4=SumV3-v;
SumH1=SumH+I1+I2+I3+hp;
M8=I1*35;
M9=I2*20;
M10=I3*35/3;
Mminus1=1161849;
SumM4=SumM3-M8-M9-M10-Mhp-Mv;

x=SumM4/SumV4;
e=wb/2-x;
p=hw*gamma_w;
pe=Cm*alphah*gamma_w*hw;
pnt=(SumV4/wb)*(1+(6*e/wb));
pnh=(SumV4/wb)*(1-(6*e/wb));
sigmat=pnt*sec(fi)^2;
sigmah=pnh*sec(theta)^2-(p+pe)*tan(theta)^2;
taut=pnt*tan(fi);
tauh=(-pnh+(p+pe))*tan(theta);
pnt=round(pnt);
pnh=round(pnh);
sigmat=round(sigmat);
sigmah=round(sigmah);
taut=round(taut);
tauh=round(tauh);
mprintf("\n\ncase 4.considering seismic forces");
mprintf("\nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%f kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%f kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%f kN/square.m.",taut);
mprintf("\nShear stress at heel=%f kN/square.m.",tauh);   //answer is wrong in book

FOS=miu*SumV4/SumH1;
SFF=(miu*SumV4+wb*1400)/SumH1;
FOO=Mplus/Mminus1;
Ffi=1.2;Fc=2.7;
F=(miu*SumV4/Ffi+1400*wb/Fc)/SumH1;
FOS=round(FOS*1000)/1000;
SFF=round(SFF*100)/100;
FOO=round(FOO*100)/100;
F=round(F*100)/100;
mprintf("\n\nFactor of safety against sliding=%f.",FOS);
mprintf("\nShear friction factor=%f.",SFF);
mprintf("\nFactor of safety against overturning=%f.",FOO);
mprintf("\nFactor of safety for load combination E=%f. > 1",F);
mprintf("\nDam is safe ");
