clc;
warning('off');
printf("\n\n example4.3 - pg100");
// given
km=9.92;  //[Btu/h*ft*degF]
Alm=0.242*(12/5);  //[ft^2]
T1=0;  //[degC]
T2=10;  //[degC]
deltaT=(T1-T2)*1.8;  //[degF]
r2=1.1875;
r1=1.0335;
deltar=(r2-r1)/12;  //[ft]
// using the formula Qr/Alm=-km*(deltaT/deltar)
Qr=(-km*(deltaT/deltar))*Alm;
printf("\n\n qr=%fBtu/h",Qr);
// in SI units 
Alm=0.177;  //[m^2]
T1=0;  //[degC]
T2=10;  //[degC]
km=17.17;  //[W/m*K]
r2=1.1875;
r1=1.0335;
deltaT=T1-T2;
deltar=(r2-r1)*0.0254;  //[m]
// using the same formula
Qr=(-km*(deltaT/deltar))*Alm;
printf("\n\n qr=%fW",Qr);
