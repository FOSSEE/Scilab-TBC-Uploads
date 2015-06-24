//problem 1.16
h1=8
w=9810
wd=6
p1=0.5*w*h1*h1*wd
h2=4
p2=0.5*h2*w*h2*wd
h11=0.66666*h1
h22=0.6666*h2
p=p1-p2
hf=(p1*(h1-h11)-p2*(h2-h22))/p
disp(p,"resultant force")
disp(hf,"position of its line of action")
