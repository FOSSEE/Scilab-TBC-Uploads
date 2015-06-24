
mu_not=4D-7*%pi
b=[.5 1 1.2 1.4]
mu_r=[2500 2000 1500 1000]
plot2d(b,mu_r,rect=[0,0,1.5,3000])
xtitle("B-mu_r curve for example 4.11", "B(Wb/m^2)", "mu_r")

phi=.38D-3  //flux in ring
A=3D-4  //cross-sectional area
B=phi/A
mu_r=1300  //correspondng to B from B-mu_r curve plotted
H=B/(mu_not*mu_r)  //ampere turns per metre of flux path length
l=%pi*58D-2  //length of mean flux path
AT_iron=H*l
mprintf("Total ampere turns required by iron ring=%d\n", round(AT_iron))
//after saw cut of 1 mm width has been made
l=l-.1D-2  //length of mean flux path in iron portion of ring
ATi=H*l
ATg=.796*B*1D-3*1D+6
AT=round(ATi)+round(ATg)
mprintf("Extra ampere turns required =%d", round(AT)-round(AT_iron))
