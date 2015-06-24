//data
ZL=complex(73,-42.5)
Zo=complex(50,.01)
//formula and result
printf("\nresult:-")
F=(ZL-Zo)/(ZL+Zo)
p=sqrt(real(F)^2+imag(F)^2)
VSWR=(1+p)/(1-p)
disp(F,"F=")
printf("\nVSWR=%.4f",VSWR)