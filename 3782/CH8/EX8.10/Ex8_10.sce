


//

//

a1=0,a2=3.0,

b1=2.20,b2=5.50,

c1=1.75,c2=3.0,

d1=1.5,d2=0,

e1=4.75,e2=5.25,

f1=6.40,f2=7.30,

g1=0,g2=3.0,


printf("\n at station 1')
sp=(e1*d2)+(f1*e2)+(d2*f2)+(c1*d2)+(b1*c2)+(a1*b2)

sq=(e2*d1)+(e1*f2)+(f1*g2)+(d1*c2)+(c1*b2)+(b1*a2)

area1=0.5*(sp-sq)
area1=abs(area1)
printf("\n sp= %0.3f,sq= %0.3f",sp,sq)
printf("\n area = %0.3f sq. meter",area1)

a1=0,a2=3.0,

b1=3.1,b2=5.25,

c1=2.20,c2=3.0,

d1=2,d2=0,

e1=5.25,e2=6,

f1=7.40,f2=8.5,

g1=0,g2=3.0,

printf("\n at station 2')
sp1=(e1*d2)+(f1*e2)+(d2*f2)+(c1*d2)+(b1*c2)+(a1*b2)

sq1=(d1*e2)+(e1*f2)+(f1*g2)+(d1*c2)+(c1*b2)+(b1*a2)
printf("\n sp1= %0.3f,sq1= %0.3f",sp1,sq1)


area2=0.5*(sp1-sq1)
area2=abs(area2)
printf("\n area = %0.3f sq. meters",area2)

printf("\n volume by average end area rule')
v=50*((area1+area2)/2)
printf("\n volume= %0.3f cu. meters",v)
