clear
//

//variable declaration

w=(100)                   //wide of rectangular beam,mm
h=(200)                   //height or rectangular beam dude,mm

I=w*(h**3)/12

//At point A, which is at 30 mm below top fibre 
y=100-30
M=(80*1000000)            //sagging moment,KN-m

fx=M*y/I

px=-fx
F=(100*1000 )            //shear force,N
b=(100)
A=b*30
y1=100-15

q=(F*(A*y1))/(b*I)     //shearing stress,N/mm^2

py=0
p1=(px+py)/2+sqrt((((px-py)/2)**2)+(q**2))
p2=(px+py)/2-sqrt((((px-py)/2)**2)+(q**2))
printf("\n  p1= %0.2f  N/mm^2",p1)
printf("\n  p2= %0.2f  N/mm^2",p2)
