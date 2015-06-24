//find stresses in inner and outer fibres
clc
//refer fig 5.11 and gfig 5.12
//solution
//given
W=20*10^3//N
Ri=50//mm
Ro=150//mm
h=100//mm
b=20//mm
A=b*h//mm^2//area
Rn=h/{log(Ro/Ri)}//mm//rad of neutral axis
R=Ri+h/2//rad of centroidal axis
e=R-Rn
x=R//mm//distnce btw load and centroidal axis
M=W*x//N-mm
f=W/A//N/mm^2
yi=Rn-Ri
yo=Ro-Rn
fbi=(M*yi)/(A*e*Ri)//N/mm^2
fbo=(M*yo)/(A*e*Ro)//N/mm^2
Fi=f+fbi//N/mm^2
Fo=f-fbo//N/mm^2
printf("the value of e is,%f mm\n",e)
printf("the value of Rn is,%f mm\n",Rn)
printf("the stress on section X-X is,%f N/mm^2\n",f)
printf("the max bedning stress on inner surafce,%f N/mm^2\n",fbi)
printf("the max bending stress on outer surface is,%f N/mm^2\n",fbo)
printf("the resultant streess on inner surface is,%f N/mm^2\n",Fi)
printf("the resultant stress on outer surface is,%f N/mm^2\n",Fo)