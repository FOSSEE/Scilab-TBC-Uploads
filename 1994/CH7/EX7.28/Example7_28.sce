//Chapter-7,Example7_28,pg 7-88
Im=120
Ic=38
Kn=1000/5
//at full load
Is=5
Ns=1000
Np=5
n=Ns/Np//turns ratio
R=n+(Ic/Is)
err=(Kn-R)/R//ratio error
err=err*100
printf("percentage ratio error\n")
printf("err=%.2f ",err)
