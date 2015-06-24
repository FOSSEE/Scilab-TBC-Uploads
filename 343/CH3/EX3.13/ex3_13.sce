clc
vl=400                  //Assigning values to parameters
vph=vl
r=40
t=0
iph=vph/r
il=sqrt(3)*iph
p=sqrt(3)*vl*il*cos(t)
disp("Watts",polar(p),"Power taken is")
i=10
p=2*i*i*r
disp("Watts",polar(p),"Power taken after diconnecting one resistor is")