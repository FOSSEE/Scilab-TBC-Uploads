
//

//

a=145
cpi=1580
de=5
pi=30
lct=0.00555

da=180-a

r=(1719)/5

printf("\n radius = %0.3f ",r)

//a

tl=r*(tan((da/2)*(%pi/180)))
printf("\n tangent length = %0.3f ",tl)

//b

cl=(%pi*r*da)/180
printf("\n curve length = %0.3f ",cl)

//c

c1t=cpi-tl
printf("\n chainage of 1st point = %0.3f ",c1t)

//d
c2t=c1t+cl
printf("\n chainage of 2nd point = %0.3f ",c2t)

//e
lisc=1480-c1t
printf("\n length of final sub chord = %0.3f ",lisc)
//f
n=6
ini=30
cc=1480+(n*30)
printf("\n chainage covered= %0.3f ",cc)
//g
lfsc=c2t-cc
printf("\n length of final sub chord %0.3f ",lfsc)
//h
dasc=((c2t+100)*lisc)/(r)
printf("\n deflection angle for initial sub chord = %0.3f min',dasc)
//i
dafc=((c2t+100)*%pi)/r
printf("\n deflection angle for full chord %0.3f min',dafc/60)
//j
dafsc=((c2t+100)*lfsc)/r
printf("\n deflection angle for final sub chord %0.3f min',dafsc/60)

//k

tda=da/2
printf("\n total deflection angle= %0.3f ",tda)


//l
k=1/(cos(tda*(%pi/180)))
ad=r*(k-1)
printf("\n apex distance = %0.3f ",ad)

vs=r*(1-(cos(tda*(%pi/180))))
printf("\n versed sine of curve = %0.3f ",vs)
