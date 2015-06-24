clc
vl=415           //assigning values to the parameters
r=15
l=0.1
c=0.000000177
f=50
vph=vl/sqrt(3)
xl=2*%pi*f*l
xc=1/(2*%pi*f*c)
zph=r+%i*(xl-xc)
[r1,t]=polar(zph)
iph=vph/zph
il=iph
p=sqrt(3)*vl*il*cos(t)
q=sqrt(3)*vl*il*sin(t)
s=sqrt(3)*vl*il
disp("Amperes",polar(iph),"The phase current is")
disp("Amperes",polar(il),"The line current is")
disp("Watts",polar(p),"The power drawn is")
disp("Watts",polar(q),"The reactive power is")
disp("VA",polar(s),"The total kVA is")