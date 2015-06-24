//find stress at inner and outer surface
clc
//solution
//given
//refer fig 5.9
W=5000//N
bi=18//mm
bo=6//mm
h=40//mm
Ri=25//mm
Ro=25+40//mm
A=0.5*{18+6}*40//are of section X-X//mm^2
Rn=[{(bi+bo)/2}*h]/[{{{(bi*Ro)-(bo*Ri)}/h}*log(Ro/Ri)}-(bi-bo)]//mm//radius of curvature of neutral axis
R=Ri+[(h*(bi+2*bo))/{3*(bi+bo)}]//mm//radius of curvature of centroidal axis
e=R-Rn//distance between centroidal and neutral axis
x=100+R//distance between load and central axis//mm
M=W*x//N-mm//moment abt centroidal axis
f=W/A//stress//N/mm^2
yi=Rn-Ri//distance from neutral axis to inner surface
yo=Ro-Rn//distance from neutral axis to outer surface
fbi=(M*yi)/(A*e*Ri)//N/mm^2//maximum bending stress at inner surafce
fbo=(M*yo)/(A*e*Ro)//N/mm^2//max bending strss at outr srface
Fi=f+fbi//N//mm^2//resultant stress on inner surafce
Fo=f+fbo//N/mm^2//resultant stress o outer surafce
printf("the value of Rn is,%f mm\n",Rn)
printf("the stress on section X-X is,%f N/mm^2\n",f)
printf("the max bedning stress on inner surafce,%f N/mm^2\n",fbi)
printf("the max bending stress on outer surface is,%f N/mm^2\n",fbo)
printf("the resultant streess on inner surface is,%f N/mm^2\n",Fi)
printf("the resultant stress on outer surface is,%f N/mm^2\n",Fo)
