clear
//

P1=(20)                        //vertical loading from A at distance of 1m,KN.
P2=(20)                        //vertical loading from A at distance of 2m,KN.
P3=(20)                        //vertical loading from A at distance of 3m,KN.
Ra=(P1+P2+P3)/2              //Due to symmetry

Rb=Ra                         
//At section 1.5 m from A
F=(Ra-P1)*1000
M=((Ra*1.5-P1*0.5)*1000000)
b=(100)
h=(180)

I=((b*(h**3))/12)

// Bending stress 
//f=M*y/I
y11=0
f1=(-1)*M*y11/I
y22=45
f2=(-1)*M*y22/I
y33=90
f3=(-1)*M*y33/I
//Shearing stress at a fibre ‘y’ above N–A is
//q=(F/(b*I))*(A*y1)
//at y=0,
y1=45
A1=b*90
q1=(F/(b*I))*(A1*y1)
//at y=45
y2=(90-45/2)
A2=b*45
q2=(F/(b*I))*(A2*y2)
//at y=90
q3=0

//(a) At neutral axis (y = 0) : The element is under pure shear 

py=0

p1=(f1+py)/2+sqrt((((f1-py)/2)**2)+(q1**2))

p2=(f1+py)/2-sqrt((((f1-py)/2)**2)+(q1**2))
printf("\n (i) p1= %0.4f  N/mm^2",p1)
printf("\n  p2= %0.4f  N/mm^2",p2)

theta1=45
theta2=theta1+90
printf("\n theta= %0.0f ° and  %0.0f °",theta1,theta2)

//(b) At (y = 45)
py=0 

p1=(f2+py)/2+sqrt((((f2-py)/2)**2)+(q2**2))

p2=(f2+py)/2-sqrt((((f2-py)/2)**2)+(q2**2))
printf("\n (ii) p1= %0.4f  N/mm^2",p1)
printf("\n  p2= %0.4f  N/mm^2",p2)

thetab1=(atan((2*q2)/(f2-py))*180)/(%pi*2)
thetab2=thetab1+90
printf("\n theta= %0.0f ° and  %0.0f °",thetab1,thetab2)
//mistake in book
printf("\n mistake in book")

//(c) At Y=90

py=0

p1=(f3+py)/2+sqrt((((f3-py)/2)**2)+(q3**2))

p2=(f3+py)/2-sqrt((((f3-py)/2)**2)+(q3**2))
printf("\n (iii) p1= %e  N/mm^2",p1)
printf("\n  p2= %0.4f  N/mm^2",p2)

thetac1=(atan((2*q3)/(f3-py))*180)/(%pi*2)
thetac2=thetac1+90
printf("\n theta= %0.0f °   and  %0.0f °",thetac1,thetac2)
