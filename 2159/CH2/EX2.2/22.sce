//problem 2.2
d=1
s=0.75
w=9810
a=3.142*d*d/4
h=d*0.5
p=w*h*s // intensity of pressure on at horizontal interface
v=p*a  //vertical upward force
w1=w*s*a*d/3 // weight of oil in upper hemisphere
vf=v-w1  // net vertical upward force
disp(vf,"minimum weight of upper hemisphere in N") 
