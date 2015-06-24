V=240
w=100*%pi
R=6

Vr=120
I=Vr/R

t=(205/I)^2       ////t=r^2+Xl^2
r=((240/I)^2-t-R*R)/2/R         ///this part solved wrong in the book
Xl=sqrt(t-r*r)
Z=sqrt(t)
disp(r)
disp(Xl)
disp(Z)

Pl_choke=I*I*r
disp(Pl_choke)
pf=Pl_choke/205/20
disp(pf)
