//Chapter-1,Example1_5,pg 1_27
Idc=25*10^-3
Erms=200
Rm=100
Rf=500
Rd=2*Rf
Rm1=Rm+Rd//total meter resistance
Rs=(0.9*Erms)/Idc-Rm1
printf("total meter resistance")
printf("Rs=%.2f ohm",Rs)
