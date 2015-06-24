//chapter-6,Example6_6,pg 494

Vp=0.1*10^3//deflection plate voltage

e=1.6*10^-19//charge of electron

l=1*10^-2//axial length of plates

del1=1*10^-3//output in mm

m=9.1*10^-31//mass of electron

D=0.22*10^-2//distance between centre of plates and screen

t=0.1*10^-6//time of flight

del=((Vp*e*l*D)/(del1*m))*(10^-10)//deflection of electron beam from null pos.

printf("deflection of electron beam from null pos.\n")

printf("del=%.2f cm",del)