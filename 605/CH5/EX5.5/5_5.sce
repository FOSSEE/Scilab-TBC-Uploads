
//data
a=0.455*10^-3    //m
b=1.499*10^-3    //m
W=2*%pi*5*10^9    //rad/s
uo=4*%pi*10^-7    
q=5.813*10^7
Eo=8.854*10^-12
Er=2.08
d=0.0004
//formula and result
printf("\nresult:-")
Rs=sqrt(W*uo/2/q)
printf("\nRs=%f ohm",Rs)
ac=Rs*(1/a+1/b)/(2*log(b/a)*sqrt(uo/Eo))
printf("\nac=%f Np/m",ac)
ac=ac*sqrt(Er)
ad=W/2*sqrt(uo*Eo*Er)*(d)
Bo=2*%pi*5*10^9/(3*10^8)
Bd=2*%pi*5*10^9*sqrt(2.08)/(3*10^8)
a=0.058768
Qair=Bo/(2*a)
a=0.114963
Qteflon=Bd/(2*a)
printf("\n\twith teflon\n ac=%f Np/m\nad=%f Np/m\nBo=%f rad/m\nBd=%f rad/m,\nQair=%f,\nQteflon=%f",ac,ad,Bo,Bd,Qair,Qteflon)