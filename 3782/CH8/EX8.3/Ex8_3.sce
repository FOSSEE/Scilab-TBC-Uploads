


//

//
h=50
h1=2.50,h2=1.25,h3=0.95,h4=1.65,h5=2.20,h6=2.85,h7=0.75,

b=8,sh=1,
//metres


a1=(b+(sh*h1))*h1
a2=(b+(sh*h2))*h2
a3=(b+(sh*h3))*h3
a4=(b+(sh*h4))*h4
a5=(b+(sh*h5))*h5
a6=(b+(sh*h6))*h6
a7=(b+(sh*h7))*h7

printf("\n a1=%0.3f sq.m,a2=%0.3f sq.m,a3=%0.3f sq.m,a4=%0.3f sq.m,a5=%0.3f sq.m,a6=%0.3f sq.m,a7=%0.3f sq.m",a1,a2,a3,a4,a5,a6,a7)

v=(h/3)*(a1+a7+4*(a2+a4+a6)+2*(a3+a5))


printf("\n volume= %0.3f meter cube",v)
