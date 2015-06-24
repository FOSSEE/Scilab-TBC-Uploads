//find
clc
//solution
//given
dp=60//mm
p=4//N/mm^2
fb=46//N/mm^2
k=0.42
a=%pi/6
t=k*dp*sqrt(p/fb)//mm
printf("thickness of valve head is,%f mm\n",t)
ds=dp/8 + 6.35//mm
printf("stem dia is,%f mm\n",ds)
h=dp/(4*cos(a))
printf("max lift of valve is,%f mm\n",h)