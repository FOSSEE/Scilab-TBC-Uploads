clc
Cu=40
G=17.5
b=60
a=35
c=72.5
m=0.195
Hc=Cu/(G*m)
r=Hc/(2*sind(a)*sind(c/2))
BC=Hc*((1/tand(a))-(1/tand(b)))
printf('a)The maximum depth Hc = %f m\n',Hc)
printf(' b)The radius, r = %f m\n',r)
printf(' c)The distance BC.= %f m',BC)
