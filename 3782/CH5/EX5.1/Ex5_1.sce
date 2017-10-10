
//

//

a=150
b=100
ar=2.525
br=1.755

sc=1000
d=(a*a)/(sc*sc)

A=0.0673*d*d

fa=ar-A

printf("\n correct reading on A = %0.3f meters',fa)


d=(b*b)/(sc*sc)

B=0.0673*d*d
fb=br-B

printf("\n correct reading of B = %0.3f meters',fb)

AB=fa-fb
printf("\n true difference is %0.3f meters',AB)
