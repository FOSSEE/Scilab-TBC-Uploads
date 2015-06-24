

//example 8.15
//Check the stability and determine sliding factor and shear factor
clc; funcprot(0);
//Given
c=1;
miu=0.75;          //coefficient of friction
H=90;              //heigth of dam
wb=73.1;           //width of base
Bt=7;              //width of top of dam
hw=89;             //heigth of water in reservior
Hs1=28;            //heigth of slope on upstream side
Hs2=83;            //heigth of slope on downstream side
Cm=0.735;
alphah=0.1;
gamma_m=23.5;        //unit weigth of concrete
gamma_w=9.81;        //unit weigth of water
theta=atan(8/28);
fi=atan(0.7);
//self weigth of dam
W1=(Hs1*8*gamma_m)/2,
W2=(Bt*H*gamma_m),
W3=(Hs2^2*0.7*gamma_m)/2,
//weigth of superimposed water
W4=(Hs1*8*gamma_w)/2,
W5=(hw-Hs1)*8*gamma_w,
U=hw*wb*2*gamma_w/6;                  //uplift force
wp=hw^2*gamma_w/2;                   //water pressure
hp=0.726*Cm*alphah*gamma_w*hw^2;     //hydrodynamic pressure
Mhp=0.299*Cm*alphah*gamma_w*hw^3;    //moment due to hydrodynamic pressure
//inertial load due to horizontal acceleration
I1=W2/10;
I2=W3/10;
I3=W1/10;
SumV=W1+W2+W3+W4+W5-U;
SumH=wp+hp+I1+I2+I3;
L1=(wb-8)+8/3,
L2=(0.7*Hs2)+(Bt/2),
L3=(2*Hs2*0.7)/3,
L4=(wb-8)+(2*8)/3,
L5=(wb-8)+(8/2),
L6=hw/3;
L7=2*wb/3;
M1=W1*L1,M2=W2*L2,M3=W3*L3,M4=W4*L4;
M5=W5*L5;
M6=wp*L6;
M7=U*L7;
M8=I1*45;
M9=I2*83/3;
M10=I3*28/3;
Mplus=M1+M2+M3+M4+M5;
Mminus=M6+M7+M8+M9+M10+Mhp;
SumM=Mplus-Mminus;
x=SumM/SumV;
e=wb/2-x;
pnt=(SumV/wb)*(1+(6*e/wb));
pnh=(SumV/wb)*(1-(6*e/wb));
sigmat=pnt*sec(fi)^2;
p=hw*gamma_w;
pe=Cm*alphah*gamma_w*hw;
sigmah=pnh*sec(theta)^2-(p+pe)*tan(theta)^2;
taut=pnt*tan(fi);
tauh=-(-pnh-(p+pe))*tan(theta);
mprintf("Normal stress at toe=%i kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%i kN/square.m.",pnh);
mprintf("\nPrincipal stress at toe=%i kN/square.m.",sigmat);
mprintf("\nPrincipal stress at heel=%i kN/square.m.",sigmah);
mprintf("\nShear stress at toe=%i kN/square.m.",taut);
mprintf("\nShear stress at heel=%i kN/square.m.",tauh);

FOS=miu*SumV/SumH;
SFF=(miu*SumV+wb*1400)/SumH;
FOO=Mplus/Mminus;
Ffi=1.2;Fc=2.4;
F=(miu*SumV/Ffi+1400*wb/Fc)/SumH;
FOS=round(FOS*100)/100;
F=round(F*100)/100;
SFF=round(SFF*100)/100;
FOO=round(FOO*100)/100;
mprintf("\n\nFactor of safety against sliding as per IS:6512-1972=%f. <1.5",FOS);
mprintf("\nFactor of safety against sliding as per IS:6512-1984=%f. >1",F);
mprintf("\nShear friction factor=%f. <6",SFF);
mprintf("\nFactor of safety against overturning=%f. <1.5",FOO);
mprintf("\n\nDam is unsafe for given loading conditions");
