clc
x=0.01 //length in metres
L=0.03+(270*x*x) //equation provided in the textbook
mprintf("L(0.01)=%fH\n",L)
w=377 //angular  frequency in rad/sec
XL=w*L
mprintf("XL=wL=%fΩ\n",XL)//ans may vary due to toundoff error
I=1 //current in ampere
V=I*XL
mprintf("V=IXL=%fV\n",V)//ans may vary due to toundoff error
a=540 //comes from an equation in textbook,unit is henry/metre
f=(1/2)*(a*x)
mprintf("f=%fN\n",f)


