P=600E3
a=2400/600
r1=0.05
r2=0.004
x1=0.025
x2=0.016
R1=1667
Xm=417

/////As seen from the LV side

Zlv=r2+%i*x2+1/a/a*(r1+%i*x1)
disp(Zlv)

RiLV=R1/a/a
disp(RiLV)
XmLV=Xm/a/a
disp(XmLV)


Zpu=Zlv*0.6/0.6/0.6
disp(Zpu)
Ri=RiLV*0.6/0.6/0.6
disp(Ri)
Xm=XmLV*0.6/0.6/0.6
disp(Xm)
