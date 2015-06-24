clear
clc

s=50
v=11
x=.15
S=50
V=11

Xe=.15/4
FMVA= round(10000/Xe)/10000
Fault=FMVA * S
mprintf("\n(a)fault level = %.3f pu", Fault)

sga=.5*Fault
sgb=800-sga

xb=.15/2
X=(S/sgb)-xb
x=X*(V*V/S)
mprintf("\n(b)X = %.3f ohms", x)



