
//ch-10 page 379,380   pb-2
//

//
ac=45.5,cb=75.5,

//a

t=cb-ac
l1=1719
l=2760

//b
r=l1/3
printf("\n radius of curve  %0.3f ",r)

//c
tl=r*tan((t/2)*(%pi/180))
printf("\n Tangent length = %0.3f ",tl)
//d
loc=(%pi*r*t/180)
printf("\n Length of curve = %0.3f ",loc)
//e
llc=2*r*sin((t/2)*(%pi/180))
printf("\n Length long of cord= %0.3f ",llc)

//f,g
coc=l-tl
ct=coc+loc
printf("\n chainage of commencement = %0.3f ",coc)
printf("\n chainage of tangency = %0.3f ",ct)

//h

half=0.5*llc
printf("\n length of each half = %0.3f ",half)

ini=30

k=sqrt(r*r-(half*half))
o=r-k
k1=r-o
O30=(sqrt(r*r-(ini*ini)))-k1
O60=(sqrt(r*r-(2*ini*2*ini)))-k1
     
O90=(sqrt(r*r-(3*ini*3*ini)))-k1
O120=(sqrt(r*r-(4*ini*4*ini)))-k1
Oh=(sqrt(r*r-(half*half)))-k1

printf("\n O30= %0.3f O60= %0.3f O90= %0.3f O120= %0.3f O148.3= %0.3f ",O30,O60,O90,O120,Oh)
