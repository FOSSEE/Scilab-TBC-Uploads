


//

//

h1=0.75,h2=1.15,h3=0.80,h4=1.30,h5=1.5,h6=0.75

b=8 //m
sh=2 //m


x1=(50*h1)/(h1+h2)
x2=(50*h2)/(h2+h3)
x3=(50*h3)/(h4+h3)
x4=(50*h4)/(h4+h5)
printf("\n x1=%0.3f m,x2=%0.3f m,x3=%0.3f m,x4=%0.3f m",x1,x2,x3,x4)

a1=(b+(sh*h1))*h1
a2=(b+(sh*h2))*h2
a3=(b+(sh*h3))*h3
a4=(b+(sh*h4))*h4
a5=(b+(sh*h5))*h5
a6=(b+(sh*h6))*h6
printf("\n a1=%0.3f sq.m,a2=%0.3f sq.m,a3=%0.3f sq.m,a4=%0.3f sq.m,a5=%0.3f sq.m,a6=%0.3f sq.m",a1,a2,a3,a4,a5,a6)

printf("\n from chainage 0 to 50')
c1=(a1/2)*(x1)
f1=(a2/2)*(x2+0.79)
printf("\n c1=%0.3f cu.m,f1=%0.3f cu.m",c1,f1)



printf("\n from chainage 50 to 100')
f2=(a2/2)*(x2)
c2=(a3/2)*(x3+1.46)
printf("\n c2=%0.3f cu.m,f2=%0.3f cu.m",c2,f2)

printf("\n from chainage 100 to 150')
c3=(a3/2)*(x3)
f3=(a4/2)*(30.95)
printf("\n c3%0.3f cu.m,f3=%0.3f cu.m",c3,f3)

printf("\n from chainage 150 to 200')
f4=(a4/2)*(x4)
c4=(a5/2)*(x4+3.59)
printf("\n c4=%0.3f cu.m,f4=%0.3f cu.m",c4,f4)

printf("\n from chainage 200 to 250')
c5=((a1+a5)/2)*50

printf("\n c5=%0.3f cu.m",c5)

tc=c1+c2+c3+c4+c5
tf=f1+f2+f3+f4

printf("\n total cutting = %0.3f cu. meters",tc)
printf("\n total fitting= %0.3f cu. meters",tf)
