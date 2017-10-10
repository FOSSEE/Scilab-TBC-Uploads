clear
//
//case a
e=600
p=6
n=1500
z=200
a=2
//since e=(phy*n*p*z)/(60*a)
phy=(e*60*a)/(n*p*z)
printf("\n phy=0.04")
//case b
phy=0.05
p=8
n=500
z=800
a=8
p=8
e=(phy*p*n*z)/(60*a)
printf("\n e= %0.1f  V",e)
//case c
e=400
a=2
n=(e*60*a)/(phy*p*z)
printf("\n n= %0.1f  rpm",n)
//case d
phy=0.05
p=4
n=800
z=600
a=4
p=4
e=(phy*n*p*z)/(60*a)
printf("\n e= %0.1f  V",e)
