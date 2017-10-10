


//

//offsets

o1=2.5,o2=3.8,o3=4.6,o4=5.2,o5=6.1,o6=4.7,o7=5.8,o8=3.9,o9=2.20,

//here intervals are non uniform
d1=5
d2=10
d3=20


printf("\n trapezoidal rule')

//area of first section
del1=(d1/2)*(o1+o5+2*(o2+o3+o4))

//area of second section
del2=(d2/2)*(o5+o7+2*(o6))

//area of third section
del3=(d3/2)*(o7+o9+2*(o8))

//total area
total1=del1+del2+del3
printf("\n%0.3f %0.3f %0.3f", del1,del2,del3)

printf("\n total area= %0.3f square meters',total1)

printf("\n simpsons rule')

de1=(d1/3)*(o1+o5+4*(o2+o4)+2*(o3))
de2=(d2/3)*(o5+o7+4*(o6))
de3=(d3/3)*(o7+o9+4*(o8))


total2=de1+de2+de3
printf("\n%0.3f %0.3f %0.3f", de1,de2,de3)

printf("\n total area is  %0.3f square meters',total2)
