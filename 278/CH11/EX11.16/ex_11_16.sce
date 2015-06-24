//find a.)dia of fixing bolts,b.)dimension of arms
clc
//soltuion
//given
//refer fig 11.39
W=10000//N
q=60//deg
f1=100//N/mm^2
t=60//N/mm^2
Wh=W*sin(%pi/3)//N
printf("the horizontal component is,%f N\n",Wh)
Wv=W*cos(pi/3)//N
printf("the vertical component is,%f N\n",Wv)
Wt1=Wh/4//force on each bolt//N
printf("the direct tensile load on each bolt is,%f N\n",Wt1)
x1=0.05//m//distance of horizontal component from CG
Th=Wh*x1//N-m//torque due to horizntl compnt
Ws=Wv/4//N//shear load on each bolt
printf("shear load on each boltis,%f N\n",Ws)
x2=0.3//m
Tv=Wv*x2//N-m
Tn=Tv-Th//N-m//net moment
printf("net moment is,%f N-m\n",Tn)
L1=(250-175)/2000//m//dis btw 1 and 2 bolt
L3=L1+0.175//m//dis btw 3 and 4 bolt
printf("the value of L3 is,%f m\n",L3)
//let w be load  on each bolt
//Te=2*(w*L1)*L1 + 2*(w*L2)*L2=2*w(L1^2 +L2^2)//total moment abt E
//Te=0.093*w//N-m
w=Tn/0.093//N/m
printf("the laod on each per meter distance from E is,%f N/m\n",w)
L2=180//mm
Wt2=w*L3//N
printf("the value of Wt1 is ,%f N\n",Wt1)
printf("the value of Wt2 is,%f N\n",Wt2)
Wt=Wt1+Wt2//N
printf("the value of total force is,%f N\n",Wt)
Wte=0.5*[Wt + sqrt(Wt^2 + 4*Ws^2)]//N
printf("the value of equivalent force is,%f N\n",Wte)
//let dc be core dia
dc=sqrt((4*Wte)/(pi*f1))//mm
printf("the value of core dia is,%f mm\n",dc)
printf("the valuf of core dia from tabl 11.1 instandard condition is 8.18mm\n")
//let t be thickness and b be the width,b=3*t
//A=3*b*t=9*t^2//mm^2
//I={[b*(2*t +b)^3]/12}-{(b-t)*b^3/12}
//I=321*t^4/12
//Z=I/(t+0.5*b)=10.7*t^3//mm^3
//ft1=Wh/A=962/t^2//N/mm^2
Mh=Wh*0.05//N-m
//ft2=Mh/Z=40.5*10^3/t^3//N/mm^2
//Ty=Wv/A=556/t^3//N/mm^2
Mv=Wv*0.3//N-m
//ft3=Mv/Z=140.2*10^3/t^3//N/mm^2
//Ftnet=ft1-ft2+ft3//N/mm^2
//Ftnet=(962/t^2)-(40.5*10^3/t^3)+(140.210^3/t^3)
//Ftnet=(962/t^2)+(99.7*10^3/t^3)
Ftnet=100//N/mm^2
//by hit and trial
//'Ftnet=100=(962/t^2)+(99.7*10^3/t^3)
t=10.4//mm
b=3*t//mm
printf("the thickness is,%f mm\n",t)
printf("the width is,%f mm",b)
