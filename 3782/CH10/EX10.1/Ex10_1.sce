
//ch-10 page 379   pb-1
//

//

r=275
t=24
l=1320.5

tl=r*tan((t/2)*(%pi/180))
printf("\n Tangent length = %0.3f ",tl)
llc=2*r*sin((t/2)*(%pi/180))
printf("\n Length long of cord= %0.3f ",llc)
loc=(%pi*r*t/180)
printf("\n Length of curve = %0.3f ",loc)
coc=l-tl
ct=coc+loc
printf("\n chainage of commencement = %0.3f ",coc)
printf("\n chainage of tangency = %0.3f ",ct)
k=cos((t/2)*%pi/180)
ad=r*((1/k)-1)
printf("\n apex distance = %0.3f ",ad)
k1=cos((t/2)*(%pi/180))
vsc=r*(1-k1)
printf("\n versed sine of curve is %0.3f ",vsc)
