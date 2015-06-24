clc
clear

//input
d=125;//power taken by an industrial load in kilowatts
pf=0.6;//power factor
v=415;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
phii=acos(pf);//initial phase angle in radians
kVAo=d/pf;//original kVA
kvaro=d*tan(phii);//original kvar
//for 0.9power factor
phif=acos(0.9);//phase angle in radians
kvarf=d*tan(phif);//final kvar
kvarc=kvaro-kvarf;//capacitor kvar
c1=(kvarc*(10^3)*(10^6))/(v*v*2*%pi*f);//capacitance in microfarad
kVAf=d/0.9;//final kVA
kVAr=kVAo-kVAf;//reduction in kVA
//for unity power factor
kvarC=kvaro;//capacitor kvar
c2=(kvarC*(10^3)*(10^6))/(v*v*2*%pi*f);//capacitance in microfarad
kVAF=d;//final kVA 
kVAR=kVAo-kVAF;//reduction in kVA

//output
mprintf('the required values of capacitance are %3.0f uF and %3.0f uF and the respective savings in kVA are %3.1f kVA and %3.1f kVA',c1,c2,kVAr,kVAR )
