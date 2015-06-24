p=3
d=800
n=1
sigmat1=50
F=25*10^3
sigmatc=30
nH=0.8
nP=0.6
t=(p*d)/(2*sigmat1*n)
disp(t,"Thickness of pressure tank in mm=")
F1=F+0.1*F
p1=3-0.2//p1=pressure in tank-pressure drop
D=sqrt(27500/2.2)
t1=(p1*D)/(2*sigmatc)
disp(t1,"Thickness of cylinder in mm=")
// Power o/p of cylinder
sp=0.45//stroke of piston=450mm
ts=5//time req for working stroke=5s
dp=sp/ts//distance moved by piston/sec=0.45/5
w=F1*dp
disp(w,"Power output of the cylinder in watts=")
pp=(w*10^3*5)/(nH*nP*30)
disp(pp,"Power of the motor in kW=")

