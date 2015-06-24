//problem 2.1
l=4
w=2
sg=0.75
z=9810
d=0.5
v=l*w*d
wg=v*z*sg
s=24000
V=((z*v)-wg)/s
V1=(v*z-wg)/(s-z)
disp(V,"volume in m3 when block is completely in water")
disp(V1,"volume in m3 when block and concrete completely under water")
