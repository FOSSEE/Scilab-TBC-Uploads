//data
W=2*%pi*26*10^6     //rad/s
Vp=200*10^6      //m/S
B=W/Vp
Zo=50   //ohm
Zs=50     //ohm
Vs=100   //volt
ZL=100+%i*50    //ohm
l=10     //m
//formulas and result
printf("\nresult:-")
printf("\nB=%f rad/m",B)
Zin=Zo*(ZL+%i*Zo*tan(B*l))/(Zo+%i*ZL*tan(B*l))
disp(Zin,"Zin=")
VA=Vs/(Zs+Zin)*Zin
disp(VA,"VA=")
ZTh=Zo*complex(Zs,Zo*tan(B*l))/complex(Zo,Zs*tan(B*l))
disp(ZTh,"ZTh=")
Vin=50*exp(%i*(-8.168))
VTh=2*Vin
disp(VTh,"VTh=")
VL=VTh/(ZTh+ZL)*ZL
disp(VL,"VL=")
F=(complex(19.21,3.52)-50)/(complex(19.21,3.52)+50)
disp(F,"F=")
Z=10
VL=Vin*(exp(-%i*B*Z)+F*exp(%i*B*Z))
disp(VL,"VL=")
