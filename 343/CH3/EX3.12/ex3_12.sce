clc
vl=400                //assigning values to the parameters
t=0
zph=50
vph=vl/sqrt(3)
iph=vph/zph
il=iph
p=sqrt(3)*vl*il*cos(t)
disp("Watts",polar(p),"Power taken is")
iph=4
il=iph
p=vl*il*cos(t)
disp("Watts",polar(p),"Power taken after disconecting one of the resistor is")