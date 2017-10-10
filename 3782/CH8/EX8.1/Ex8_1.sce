


//

//given

h1=0.90,h2=1.25,h3=2.15,h4=2.50,h5=1.85,h6=1.35,h7=0.85,


b=10//width in m
sh=1.5//side slope in m

h=40//m

d1=(b+(sh*h1))*h1
d2=(b+(sh*h2))*h2
d3=(b+(sh*h3))*h3
d4=(b+(sh*h4))*h4
d5=(b+(sh*h5))*h5
d6=(b+(sh*h6))*h6
d7=(b+(sh*h7))*h7

printf("\n d1= %0.3f sq. meter,d2 = %0.3f sq. meter,d3= %0.3f sq. meter,d4= %0.3f sq. meter,d5= %0.3f sq. meter,d6= %0.3f sq. meter,d7= %0.3f sq.meter",d1,d2,d3,d4,d5,d6,d7)
printf("\n by trapezoidal rule')
v=(h/2)*(d1+d7+2*(d2+d3+d4+d5+d6))
printf("\n V= %0.3f meter cube',v)

printf("\n by prismoidal rule')

v1=(h/3)*(d1+d7+4*(d2+d4+d6)+2*(d3+d5))

printf("\n V= %0.3f meter cube',v1)
