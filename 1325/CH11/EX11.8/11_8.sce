//To find diameter of bicycle wheel
clc
//given
Td=23
Ta=19
Tb=20
Tc=22
k=Td*Ta/(Tb*Tc)
//using componendo and dividendo, Nc=0 and reducing we get
a=1/k-1//a=Nd/Ne
b=1/a//- denotes opposite direction
d=5280*12/(%pi*5*b)
p=ceil(d)
printf("\nThe diameter must be = %.1f in\nThe numbers of teeths are therefore suitable for a cyclometer for bicycle with %.f inches wheels",d,p)

