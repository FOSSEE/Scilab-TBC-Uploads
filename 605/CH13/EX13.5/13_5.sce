
IDss=50*10^-3
gm=200*10^-3
VL=.25
RL=50
Vp=2*VL
//gm=-2*IDss/Vp
Vp=2*IDss/gm
printf("\nVp=2*IDss/gm=%.2f V",Vp)
gc=IDss/(2*Vp)
printf("\ngc=IDss/(2*Vp)=%.2e S",gc)
Av=gc*RL
printf("\nAv=gc*RL=%.2f",Av)