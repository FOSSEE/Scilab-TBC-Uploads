//Chapter-7,Example7_13,pg 7-37
R1=20*10^3
R2=25*10^3
V=250//voltage supply
VR2=R2*V/(R1+R2)//voltage across R2
//case-1
S=500
Vr=150//voltage range of resistor
Rv=S*Vr
Req=R2*Rv/(R2+Rv)
VReq=Req*V/(Req+R1)//voltage across Req
printf("first voltmeter reading\n")
printf("VReq=%.2f V\n",VReq)
//case-2
S=10*10^3
Rv=S*Vr
Req=R2*Rv/(R2+Rv)
VReq=Req*V/(Req+R1)
printf("second voltmeter reading\n")
printf("VReq=%.2f V",VReq)
