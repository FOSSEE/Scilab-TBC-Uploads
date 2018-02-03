clear
//

//variable declaration

PC=1500.0                       //Vertical loading at C,N
CD=2.0                        
AC=1.5
BD=1.0
AB=4.0

x=(((AC**2)-(BD**2))/4)+1
y=sqrt((AC**2)-(x**2))

alpha=acos(x/AC)
beta1=acos((CD-x)/BD)

//Applying Lami’s theorem to the system of forces acting at point C 

T1=PC*sin(%pi/2)/sin(%pi-alpha)
T2=PC*sin((%pi/2)+alpha)/sin(%pi-alpha)
T3=T2*sin(%pi/2)/sin((%pi/2)+beta1)
W=T2*sin(%pi-beta1)/sin((%pi/2)+beta1)


printf("\n W= %0.2f  N",W)
