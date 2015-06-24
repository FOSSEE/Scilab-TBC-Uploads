//problem 1.19
s=1.5
s1=0.9
w=9810
h1=0.9
h2=0.6
p1=0.5*w*s*s1*h1*h1 //total pressure due to oil
p2=w*h1*h2*s*s1 // total pressure due to oil above water
p3=w*h2*h2*0.5*s //total pressure due to water
p=p1+p2+p3
h=((p1*0.6666*h1)+(p2*(h1+0.5*h2))+(p3*(0.6666*h2+h1)))/p
disp(p,"resultant pressure on the wall in N/m2")
disp(h,"position of centre of pressure from free surface")


