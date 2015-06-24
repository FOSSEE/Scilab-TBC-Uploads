//chapter-14,Example14_9,pg 511

//LVDT parameters

Rp=1.3

Rs=4

Lp=2.2*10^-3

Ls=13.1*10^-3

//M1-M2 varies linearly with displacement x, being maximum 0.4 cm

//when M1-M2=4mH so that k=(4/0.4)=10mH/cm

k=10*10^-3

f=50//frequency

w=2*%pi*f//angular frequency

tp=(Lp/Rp)//time const.

N=((w*k)/(Rp*sqrt(1+(w^2)*(tp^2))))//normalized output

phi=(%pi/2)-atan(w*tp)//phase angle

phi=phi*(180/%pi)//conv. into degree

printf("normalized output\n")

printf("N=%.4f V/V/cm\n",N)

printf("phase angle\n")

printf("phi=%.2f",phi)