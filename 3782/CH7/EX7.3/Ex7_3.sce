


//

//GIVEN


dis=10
a=0,g=0,

b=2.5,c=3.5,d=5,e=4.6,f=3.2,


printf("\n Mid ordinate rule')
//FINDING MID ORDINATES
h1=(a+b)/2
h2=(b+c)/2
h3=(c+d)/2
h4=(d+e)/2
h5=(e+f)/2
h6=(f+g)/2
//find area
area=dis*(h1+h2+h3+h4+h5+h6)

printf("\n required area is %0.3f square meters',area)

printf("\n average ordinate rule')
dis=10//m
p=6//no of divs
bl=dis*p//base length
no=7//no of ordinates


area2=bl*(a+b+c+d+e+f+g)/no

printf("\n required area is %0.3f square meters',area2)

printf("\n trapezoidal rule')


area3=(dis/2)*(2*(a+b+c+d+e+f+g))

printf("\n required area is  %0.3f square meters',area3)
printf("\n simpsons rule')

area4=(dis/3)*(4*(b+d+f)+2*(c+e))
printf("\n required area is  %0.3f square meters',area4)
