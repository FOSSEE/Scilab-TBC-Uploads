clear
//
r1=25
l1=0.159
r2=60
c=125*10**-6
v=230
f=50
//case a
xl=2*3.14*f*l1
z1=((r1**2)+(xl**2))**0.5
i1=v/z1
//phy1=cosinverse(r1/z1)=63.43 lag
xc=1/(2*3.14**c)
z2=((r2**2)+(xc**2))**0.5
i2=v/z2
//i2 has 23 deg lead calculated similar to i1
//p=cosphy1
//q=cosphy2
p=0.44
q=0.92
I1=i1*p+i2*q
a=-0.89
b=0.39
I2=i1*a+i2*b
I=((I1**2)+(I2**2))**0.5
printf("\n I= %0.1f  A",I)
//case b
z=v/I
printf("\n z= %0.1f  ohm",z)
R=(z*I1)/I //note the value of I in text is printed wrongly so the result may vary
printf("\n R= %0.1f  ohm",R)
x=(z*I2)/I //same note applicable here as well
printf("\n x= %0.1f  ohm",x)
