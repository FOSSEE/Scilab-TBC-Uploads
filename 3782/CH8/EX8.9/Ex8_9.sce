


//

//

printf("\n section 1')
b=10,n=5,s=1,s1=2,

d=50,h1=0.5,h2=0.7,


ac=0.5*(((0.5*b+n*h1)*(0.5*b+n*h1))/(n-s))

af=0.5*(((0.5*b-n*h1)*(0.5*b-n*h1))/(n-s1))

printf("\n ac=%0.3f,af=%0.3f",ac,af)


printf("\n section 2')


ac1=0.5*(((0.5*b+n*h2)*(0.5*b+n*h2))/(n-s))

af1=0.5*(((0.5*b-n*h2)*(0.5*b-n*h2))/(n-s1))
D=50
printf("\n ac1=%0.3f,af1=%0.3f",ac1,af1)
vc=((ac+ac1)/2)*D
vf=((af+af1)/2)*D

printf("\n vc= %0.3f vf= %0.3f ",vc,vf)

D=50//m
pcc=(D/(12*(n-s)))*(n*n*(h1-h2)*(h1-h2))


pcf=(D/(12*(n-s1)))*(n*n*(h1-h2)*(h1-h2))


cvc=vc-pcc
cvf=vf-pcf

printf("\n corrected volume (in cutting)= %0.3f cu. meter",cvc)

printf("\n corrected volume(in filling)= %0.3f cu. meter",cvf)
