//Chapter-7,Example7_20,pg 7-65
I=20
V=230
Pf=0.8//power factor
t=3600
K=100
Et=V*I*Pf*t
Et=Et/(3600*10^3)//in kWh
N=360
Er=3.6//in kWh
err=(Er-Et)/Et
err=err*100
printf("percentage error\n")
printf("err=%.2f\n",err)
printf("negative sign shows that meter is slow and Er<Et")
