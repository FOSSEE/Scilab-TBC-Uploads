clear
//

//variable declaration
L=(6)                     //m
w=(60)                    //uniformly distributed load,KN/m
Rs=L*w/2                       //Reaction at support,KN

//Moment at 1.5 m from support
M =( Rs*1.5-(w*(1.5**2)/2))
//Shear force at 1.5 m from support
F=Rs-1.5*w

B=(200)                   //width of I-beam,mm
H=(400)                   //height or I-beam,mm
b=(190)
h=(380)
I= (B*(H**3)/12)-(b*(h**3)/12)

//Bending stress at 100 mm above N–A
y=100

f=M*1000000*y/I

//Thus the state of stress on an element at y = 100 mm, as px = f,py=0
px=-f
py=0
A=200*10*195+10*90*145
q=(F*1000*(A))/(10*I)     //shearing stress,N/mm^2

p1=(px+py)/2+sqrt((((px-py)/2)**2)+(q**2))
p2=(px+py)/2-sqrt((((px-py)/2)**2)+(q**2))
printf("\n  p1= %0.2f  N/mm^2",p1)
printf("\n  p2= %0.2f  N/mm^2",p2)


qmax=sqrt((((px-py)/2)**2)+(q**2))

printf("\n qmax= %0.2f  N/mm^2",qmax)
