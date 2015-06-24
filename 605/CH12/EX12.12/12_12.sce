
Z=50
S11=2.18*exp(%i*%pi/180*(-35))
S21=2.75*exp(%i*%pi/180*(96))
S12=1.26*exp(%i*%pi/180*(18))
S22=0.52*exp(%i*%pi/180*(155))
FL=0.59*exp(%i*%pi/180*(-104))
function [x]=mod(n)
    r=real(n)
    i=imag(n)
    x=sqrt(r^2+i^2)
endfunction
del=S11*S22-S12*S21
k=(1-mod(S11)^2-mod(S22)^2+mod(del)^2)/(2*mod(S12*S21))
disp(del,"del=")
printf("\nk=%.2f",k)
Cs=conj(S11-del*conj(S22))/(mod(S11)^2-mod(del)^2)
disp(Cs,"Cs")
rs=mod((S12*S21)/(mod(S11)^2-mod(del)^2))
printf("\nrs=%.3f",rs)
CL=conj(S22-del*conj(S11))/(mod(S22)^2-mod(del)^2)
disp(CL,"CL=")
rL=mod(S12*S21/(mod(S22)^2-mod(del)^2))
printf("\nrL=%.2f",rL)
Fin=S11+(S12*S21*FL)/(1-S22*FL)
disp(Fin,"Fin=")
Zin=50*(1+Fin)/(1-Fin)
disp(Zin,"Zin=")
ZG=27.9+%i*1.91
disp(ZG,"ZG=")
FG=(ZG-50)/(ZG+1)
disp(FG,"FG=")        //calculation mistake in calculating FG in book
VSWR=(1+mod(FG))/(1-mod(FG))
printf("\nVSWR=%.3f",VSWR)

