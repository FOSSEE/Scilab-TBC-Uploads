//Chapter-7,Example7_23,pg 7-66
I=5
V=220
Pf=1
K=3275
t=1/60//in hr
E=V*I*Pf*t
E=E/10^3//in kWh
Rev=E*K//no. of revolutions
printf("speed of disc\n")
printf("s=%.2f r.p.m\n",Rev)
//at half load
I=I/2
t=59.5
Et=V*I*Pf*t
Et=Et/(3600*10^3)//in kWh
N=30
Er=N/K
err=(Er-Et)/Et
err=err*100
printf("percentage error\n")
printf("err=%.2f\n",err)
printf("Er>Et meter is fast")
