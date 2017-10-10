clc
P1=100 //pressure in kPa
V=2 //in metre-cube
R=8.314*10^3
T0=300 //in kelvin
N1=(P1*10^3*V)/(R*T0)
mprintf("N1=%fkmol\n",N1)//ans vary due to roundoff error
NHe0=0.0401
Nair0=0.0401
CvHe=12.4717
Cvair=20.7889
U0=((NHe0*CvHe)+(Nair0*Cvair))*T0
mprintf("Uo=%fkJ\n",U0)//ans vary due to roundoff error
Pf=4 //pressure in MPa
a=(Pf*10^6*V)/R
CPHe=20.786
THe=600
Nairf=0.0401
b=a/(CPHe*THe)
c=-NHe0+(U0/(CPHe*THe))
d=c+Nairf-(CvHe*b)
e=(Nairf*c)-(Nairf*Cvair*b)
f=1
//the above are the coefficients of quadratic equation formed for NHEf obtained from equation formed in book
NHef=(-d+sqrt(d^2-4*f*e))/(2*f)
mprintf("NHe=%fkmol\n",NHef)//ans vary due to roundoff error
Tf=a/(NHef+Nairf)
mprintf("Tf=%fK\n",Tf)//ans vary due to roundoff error
yHe=NHef/(NHef+Nairf)
mprintf("yHe=%f\n",yHe)//ans vary due to roundoff error
yair=Nairf/(NHef+Nairf)
mprintf("yair=%f\n",yair)//ans vary due to roundoff error
mprintf("Helium that enters tank=%fkmol",NHef-Nairf)//ans vary due to roundoff error




