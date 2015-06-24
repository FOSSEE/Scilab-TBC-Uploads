R=5
L=2
V=10
T=L/R

iL_m=V/R
disp(iL_m)
iL_0p=iL_m
iL_inf=2+V/R

//function I=iL(t)
//    I=iL_inf+(iL_0p-iL_inf)*exp(-t/T)
//endfunction

//disp(iL(0.5))
//disp(iL(1.5))

t=0.5
I=iL_inf+(iL_0p-iL_inf)*exp(-t/T)
disp(I)

t=1.5
I=iL_inf+(iL_0p-iL_inf)*exp(-t/T)
disp(I)