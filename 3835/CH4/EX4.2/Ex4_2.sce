clear
//
//given
vm=155
omega=377
//case a
t=(2*3.14)/(omega)
printf("\n t= %e  sec",t)
//case b
f=1/(t)
printf("\n f= %e  Hz",f)
//case c
v=109.60 //rms value
//at t=0 -77.5=155*sin(ang)
//therefore, ang=-0.5236 rad
ang=-0.5236
t=ang/omega
printf("\n t= %e  sec",t)
