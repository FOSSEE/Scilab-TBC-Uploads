//chapter19
//example19.5
//page420

// v=5*(1+0.6*cos(6280*t))*sin(211d4*t) V
// compare with v=Ec*(1+m*cos(ws*t))*sin(wc*t) we get
Ec=5 // V
m=0.6
fs=6280/(2*%pi) // Hz
fc=211d4/(2*%pi) // Hz

Vmin=Ec-m*Ec
Vmax=Ec+m*Ec

f1=(fc-fs)/1000 // in kHz
f2=fc/1000 // in kHz
f3=(fc+fs)/1000 // in kHz

V1=m*Ec/2
V2=Ec
V3=m*Ec/2

printf("minimum amplitude = %.3f V and maximum amplitude = %.3f V \n",Vmin,Vmax)
printf("frequency components = %.1f kHz, %.1f Hz, %.1fkHz \n",f1,f2,f3)
printf("amplitudes of components = %.3f V, %.3f V, %.3f V \n",V1,V2,V3)

// in book there is error of 0.2 kHz in every frequency component. The accurate answers are 334.8,335.8,336.8 kHz
