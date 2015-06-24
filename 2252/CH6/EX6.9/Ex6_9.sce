
//let us assume V=1 V, T=1 sec
//e=V*t/T
V=1
T=1
Erms=sqrt(integrate("(V*t/T)^2","t",0, T)/T)
mprintf("RMS value of voltage is %f times maximum voltage\n",Erms/V)
Emean=integrate("V*t/T","t",0,T)/T
k=Erms/Emean
mprintf("Form factor of this wave=%f",k)

