//find x-sectional dimensions of the bracket
clc
//solution
//given
//refer fig 5.28
P=6000//N
q=45//deg
f=60//N/mm^2
//let t be thickness and b=2*t//gevin
//A=b*t//mm^2
//A=2t^2//mm^2
//Z=t*b^2/12
//Z=4*t^3/6//mm^3
Ph=6000*cos(45)//N//horizontal component of P
Mh=Ph*75//N-mm
//fh=Mh/Z
//fh=477225/t^3//N/mm^2
Pv=6000*sin(45)//N
Mv=Pv*130//N-mm
//fov=Pv/A//dirct stress due vertical component
//fov=2121/t^2//N/mm^2
//fbv=Mv/Z//max bednding stress
//fbv=827190/t^3//N/mm^2
//f=477225/t^3+2121/t^2+827190/t^3
//60=1304415/t^3 + 2121/t^2
//using hit and trial,we get t=28.4 mm
t=28.4//mm
b=2*t
printf("the value of thickness is ,%f mm\n ",t)
printf("the value of thickness is ,%f mm",b)
