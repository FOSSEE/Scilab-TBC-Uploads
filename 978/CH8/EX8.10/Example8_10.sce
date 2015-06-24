//chapter-8,Example8_10,pg 500

Rp=94//primary resistance

Xp=64.3//primary reactance

Rs=0.85//secondary resistance

Im=31*10^-3//magnetizing current

PF=0.4//power factor

B=acos(PF)

R=Rp+Rs//total resistance

n=10//PT ratio

Is=1//load current

Vs=110//n=(Vp/Vs)

nerr=n+((Is/n)*(R*cos(B)+Xp*sin(B)+Im*Xp)/Vs)//ratio error

theta=((cos(B)*(Xp/n))-(sin(B)*(R/n))-(Im*Rp))/(Vs*n)//phase angle

printf("ratio error\n")

printf("nerr=%.3f \n",nerr)

printf("phase angle\n")

printf("theta=%.3f ",theta)