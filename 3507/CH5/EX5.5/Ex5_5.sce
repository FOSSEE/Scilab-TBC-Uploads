//chapter5
//example5.5
//page95

rp=1000 // ohm
Rl=10 // ohm
Eg=8 // V
mu=20

// the diagram in book is for understanding only. Also we do not have a block of "triode" in scilab xcos. The figure is not required to solve the problem.
// however, the equivalent circuit has been drawn in xcos for reference.

// since rp=n^2*Rl for maximum power transfer so
n=(rp/Rl)^0.5

// P_max=Ip^2*RE where Ip=mu*Eg/(rp+RE) and RE=rp
// thus
P_max=((mu*Eg)^2)/(4*rp)

printf("transformation ratio n= %.2f \n",n)
printf("power supplied to speaker when signal is 8V rms is = %.3f W",P_max)
