//Chapter-7,Example7_29,pg 7-88
Im=90
Ic=40
delta=28*(%pi/180)//in radians
Is=5
Ns=400
Np=1
n=Ns/Np
Kn=n
R=n+((Im*sin(delta)+Ic*cos(delta))/Is)
Ip=R*Is//actual primary current
err=(Kn-R)/R
err=err*100
printf("percentage ratio error\n")
printf("err=%.2f ",err)
