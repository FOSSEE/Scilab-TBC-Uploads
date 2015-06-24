//Chapter-1,Example1_7,pg 1_38
V1=1
Rm=50
Rd=15*10^3
gm=0.006
rd=100*10^3
Im=(gm*rd*Rd/(rd+Rd)*V1)/((2*(rd*Rd/(rd+Rd))+Rm))
printf("meter current")
printf("Im=%.4f A",Im)
