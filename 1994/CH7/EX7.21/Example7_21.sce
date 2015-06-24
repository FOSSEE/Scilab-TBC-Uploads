//Chapter-7,Example7_21,pg 7-65
K=1800
V=230
I=10
Pf=1//half load
Ihl=I/2//half load current
t=138
Et=V*Ihl*Pf*t
Et=Et/(3600*10^3)
N=80//no. of revolutions
Er=N/K//in kWh
err=(Er-Et)/Et
err=err*100
printf("percentage error\n")
printf("err=%.2f\n",err)
printf("positive sign shows that meter is fast and Er>Et")
