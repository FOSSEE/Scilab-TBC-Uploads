clc
//initialisation of variables
p=300//lb/in^2
ab=100//degree C
w=26.4//C
t=40//lb/in^2
t1=180//Degree C
p1=0.5//lb/in^2
T=732.38//C.H.U
W=26.2//C.H.U/lb
W1=102//C.H.U/lb
x=0.963//in
d=335//C.H.U/lb
E=743.85//C.H.U/lb
//CALCULATIONS
H=T-w//C.H.U/lb
h=T-W1//C.H.U/lb
H1=E-h//C.H.U/lb
T1=H+H1//C.H.U/lb
Wd=W1+d//C.H.U
//RESULTS
printf('the total work done per lb steam=% f C.H.U',Wd)
