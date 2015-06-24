//chapter-7,Example7_3,pg 496

Vp=1.3//pulse height

delt=0.31*10^-3//pulse width

T=1*10^-3//pulse repetion rate

Vphi=Vp*(delt/T)//phase deviation

phi=2*%pi*(Vphi/Vp)//phase

printf("phase measured\n")

printf("phi=%.4f rad",phi)