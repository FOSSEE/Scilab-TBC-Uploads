I=35
VR=25
Vrl=40
VRrl=50
Vc=45
C=50E-6
Xc=Vc/I
w=1/(Xc*C)

theta=acos((VR^2+VRrl^2-Vrl^2)/(2*VR*VRrl))
x=VRrl*cos(theta)-25
y=VRrl*sin(theta)

r=x/I
L=y/(I*w)
Vappl=sqrt((VR+x)^2+y^2)
R=VR/I

disp(L,r,R)