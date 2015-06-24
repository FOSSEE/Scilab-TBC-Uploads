// problem 2.14
l=60
b=9
w=16*1000000
w1=160*1000
y=6
q=3
s.p=10104
i=0.75*l*b*b*b/12
v=w/s.p
bm=i/v
gm=(w1*y)/(w*tand(q))
mcd=2-bm
cogd=gm+mcd
disp(gm,"metacentric height")
disp(cogd,"position of centre of gravity below the water line")
