


//

//

printf("\n at station 1')
h=1,h1=2.55,h2=0.95,b=9,b1=7.5,b2=5.25,

w1=b1+b2
a=(((h/2)*(b1+b2))+((b/4)*(h1+h2)))
printf("\n area= %0.3f sq. meter",a)

printf("\n at station 2')
h=1.5,h1=2.8,h2=1.35,b=9,b1=8.1,b2=4.75,


a1=(((h/2)*(b1+b2))+((b/4)*(h1+h2)))
d=50
k=10.01
v=(d/2)*(a+a1)
w2=b1+b2
printf("\n area= %0.3f sq.m ",a1)
h2=1
h1=1.5
cp=(d/12)*(h1-h2)*(w2-w1)


cv=v-cp
printf("\n v= %0.3f cu.m cp= %0.3f cu.m ",v,cp)
printf("\n correct volume = %0.3f cu.meters",cv)
