//problem 1.18
a1=1.4*2.2*1.4
x1=1.6+0.7
x11=(1.4*1.4/(12*2.3))+x1
x2=0.7
x22=(1.4*1.4/(12*0.7))+x2
z=9810
p1=z*a1*x1
p2=z*a1*x2/1.4
p=p1-p2
h=(p1*(3-x11)+p2*(1.4-x22))/p
f=(p1*(3-x11)-p2*(1.4-x22))/1.4
disp(p,"resultant force")
disp(f,"force acting horizontally on the top of the gate")
