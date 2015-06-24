
mu_not=4D-7*%pi
phi=.0006//flux
A=5.5D-4//cross-sectional area of ring
B=phi/A
h=[0 200 400 500 600 800 1000]
b=[0 .4 .8 1 1.09 1.17 1.19]
plot2d(h,b)
xtitle("B-H curve for example 4.8", "H(ampere turns per metre)", "B(Wb/m^2)")
H=600//corresponding to B from B-H curve
L=270D-2//length of ring
Lg=4.5D-3//length of air gap
Li=L-Lg//length of flux path in iron portion of ring
ATi=H*Li
ATg=.796*B*Lg*1D+6
AT=round(ATi)+round(ATg)
mprintf("Total ampere turns=%d", AT)
//error in textbook answer
