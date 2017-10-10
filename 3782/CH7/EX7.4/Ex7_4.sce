


//ch-7 page 216   pb-2
//

//given

printf("\n trapezoidal rule')
//given offsets
o1=3.5,o2=4.3,o3=6.75,o4=5.25,o5=7.5,o6=8.8,o7=7.9,

o8=6.4,o9=4.4,o10=3.25,

//distances
dis=15

area1=(dis/2)*(o1+o10+(2*(o2+o3+o4+o5+o6+o7+o8+o9)))

printf("\n required area is  %0.3f square meters',area1)

printf("\n simpsons rule')

A1=dis/3*(o1+o9+4*(o2+o4+o6+o8)+2*(o3+o5+o7))

A2=dis/2*(o10+o9)

area2=A1+A2
printf("\n%0.3f %0.3f ", A1,A2)

printf("\n required area is  %0.3f square meters',area2)
