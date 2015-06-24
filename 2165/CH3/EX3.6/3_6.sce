clc
//initialisation of variables
w=40//lb
w1=380//lb
t1=80//Degree
p=85//lb/in^2
p1=15//lb/in^2
W=w+w1//lb/hr
P=p+p1//lb/in^2
T=659.3//C.H.U/lb
d=10//h.p
//CALCULATIONS
H=W*T-w1*t1//C.H.U/hr
H1=(d*33000*60)/1400//C.H.U/hr
T1=H1/H*100//percent
D=w1/(w1+w)//C.H.U/hr
H2=[W*(99.6+D*539.3)-w1*t1]//C.H.U/hr
T2=H-H2//C.H.U/hr
H3=T2-H1//C.H.U/hr
E=(1400*H3)/(60*33000)//h.p
//RESULTS
printf('The amount of radiations from the engine =% f h.p',E)
