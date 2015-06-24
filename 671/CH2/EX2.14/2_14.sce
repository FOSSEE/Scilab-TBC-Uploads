//convert practical current source to voltage source
V=10*5

//KVLs
A=[35,-20;-20,50]
I=inv(A)*[50;-100]

v=20*(I(1)-I(2))
disp(v)