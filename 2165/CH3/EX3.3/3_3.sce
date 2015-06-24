clc
//initialisation of variables
p=35//lb/in^2
w=1425//lb
q=1474//lb
s1=126.7//C.H.U/lb
s2=28//C.H.U/lb
t1=5//degree C
t2=28//degree C
L1=521.4//C.H.U/lb
w1=245//lb
w2=0.2//lb
//CALCULATIONS
W=(s1-s2)+L1//C.H.U/lb
H=q*(t2-t1)//C.H.U/lb
T=H/W//lb
//RESULTS
printf('The total equivalent=% f lb',T)
