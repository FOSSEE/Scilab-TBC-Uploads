v1=220
v2=110
z1=0.32+%i*0.85
z2=0.11+%i*0.27
a=v1/v2

z=z1+a*a*z2
IHV=v1/norm(z)
ILV=IHV*a
disp(IHV,ILV)
