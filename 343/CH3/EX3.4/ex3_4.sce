clc
f=50           //assigning values to the parameters
xc=200
vph=400
vl=vph
zph=14.151-%i*200
[r,t]=polar(zph)
iph=vph/zph
il=sqrt(3)*iph
p=sqrt(3)*vl*il*cos(t)
pwr=vph*iph*cos(t)
c=1/(2*%pi*f*xc)
disp("Watts",polar(pwr),"power consumed in each branch of delta is")
disp("Farads",c,"capacitive reactance is")