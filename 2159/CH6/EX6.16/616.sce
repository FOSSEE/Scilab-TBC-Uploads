// problem 6.16
q=0.15/(2.5*60)
d=0.03
p1=9810
p2=6867
l=2
w=9810
hf=(p1-p2)/w
a=3.142*d*d/4
V=q/a
g=9.81
f=(hf*2*g*d)/(4*l*V*V)
C=V*((4*l)/(d*hf))^0.5
disp(f,"darcy co-efficient")
disp(C,"Chezy formula")

