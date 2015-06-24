//Chapter-7,Example7_14,pg 7-38
Rb=1*10^3
Ra=5*10^3
V=25
VRb=Rb*V/(Ra+Rb)//voltage across Rb
Vr=5
//case-1
S=1*10^3
Rv=S*Vr
Req=Rb*Rv/(Rb+Rv)
VReq=Req*V/(Req+Ra)
err=(VRb-VReq)*100/VRb
acc=100-err
printf("voltmeter reading case-1\n")
printf("VReq=%.2f V\n",VReq)
printf("percentage error\n")
printf("err=%.2f \n",err)
printf("percentage accuracy\n")
printf("acc=%.2f\n",acc)
//case-2
S=20*10^3
Rv=S*Vr
Req=Rb*Rv/(Rb+Rv)
VReq=Req*V/(Req+Ra)
err=(VRb-VReq)*100/VRb
acc=100-err
printf("voltmeter reading case-2\n")
printf("VReq=%.2f V\n",VReq)
printf("percentage error\n")
printf("err=%.2f \n",err)
printf("percentage accuracy\n")
printf("acc=%.2f\n",acc)
