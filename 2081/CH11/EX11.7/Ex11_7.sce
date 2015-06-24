nuc1a=50
ncrc=3
nec1a=nuc1a+ncrc

nuc1b=132
nt=4
nec1b=nuc1b+nt

nc=nec1a+nec1b
FECr=1/2
nce=nc*1/FECr

nc2=78
net=nc2+nce

Dur=20*10^-3//duration
Gcbr=net/Dur//Gross channel bit rate
disp(Gcbr,'Gross channel bit rate in bits/sec')
