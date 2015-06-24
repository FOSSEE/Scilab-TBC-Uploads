clc
//Initialization of variables
t1=32 //F
t2=80 //F
m1=1 //lbm
m2=5 //lbm
hlf=144 //Bru/lbm
cp=1 //B/lbm F
//calculations
te=(-hlf+t1*m1+t2*cp*m2) /(m2+m1)
dsi= hlf/(t1+460) + cp*log((460+te)/(460+t1))
dsw= m2*cp*log((460+te)/(460+t2))
dss=dsi+dsw
LE=-(t1+460)*dss
G1=m2*cp*(te-t2) - m2*(460+t1)*log((460+te)/(460+t2))
G2=m1*cp*(te-t1) - m1*(460+t1)*log((460+te)/(460+t1))
G=G1+G2
//results
printf("Entropy change of the system = %.4f Btu/R",dss)
printf("\n Loss of available energy = %.1f Btu",LE)
printf("\n Net change in available energy = %.1f Btu",G)
//The asnwer is a bit different due to rounding off error in textbook
