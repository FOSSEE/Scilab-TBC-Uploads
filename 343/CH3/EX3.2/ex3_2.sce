clc
f=50          //Assigning values to parameters
rph=8
l=0.02
xl=2*%pi*f*l
vl=230
f=50
vph=vl/sqrt(3)
zph=8+%i*6.28
[r,t]=polar(zph)
iph=vph/r
il=iph
p=sqrt(3)*vl*il*cos(t)
q=sqrt(3)*vl*il*sin(t)
s=sqrt(3)*vl*il
disp("Amperes",il,"The line current is")
disp("Watts",polar(p),"The total Power absorbed is")
disp("VAR",polar(q),"The reactive volt amperes is")
disp("Volt Ampere",polar(s),"The Volt amperes is")