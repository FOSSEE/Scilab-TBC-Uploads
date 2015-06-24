// problem 1.26
l=5
r=3
a=l*r
h=r*0.5
w=9810
ph=w*a*h
pv=w*0.25*3.142*r*r*l
p=sqrt((ph*ph)+(pv*pv))
z=ph/pv
theta=atand(z)
disp(p,"resultant pressure on the gate")
disp(theta,"angle of resultant force with vertical")
