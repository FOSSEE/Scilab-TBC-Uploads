clc
l=50                    //Assigning values to parameters
w=800
c=50
xl=w*l
xc=1/(w*c)
z1=0+%i*40
z2=50
z3=0-%i*25
zph=z1+z2*z3/(z2+z3)
[r,t]=polar(zph)
vl=550
vph=vl
iph=vph/zph
il=sqrt(3)*iph
p=sqrt(3)*vl*il*cos(t)
pf=cos(t)
q=sqrt(3)*vl*il*sin(t)
s=sqrt(3)*vl*il
disp("Amperes",polar(iph),"The phase current is")
disp("Amperes",polar(il),"The line current is")
disp("watts",polar(p),"The power drawn is")
disp(polar(pf),"The power factor is")
disp("watts",polar(q),"The reactive power is")
disp("KVA",polar(s),"The kva rating of load is")