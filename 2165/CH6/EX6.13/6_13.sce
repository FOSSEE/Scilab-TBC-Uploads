clc
//initialisation of variables
h=500//gallons
p1=150//lb/in^2
p2=0.6//lb/in^2
P=p2*p1//lb/in^2
h=25//C.H.U/lb
p=62.4//lb/ft^2
V=sqrt(2*32.2*1400*h)//ft/sec
D=0.996//in^2
d=4.898//in^2
v1=1.2//in
vi=163.2//ft/sec
m=V/32.2//ft.lb.sec
//CALCULATIONS
W=V/vi-1//lb
W1=(5000)/(3600*W)//ft/sec
V1=W1*d*D//ft^3
A=V1/V*144//in^2
I=(50/36+W1)//lb/sec
A1=(I*144)/(62.4*vi)//in^2
//RESULTS
printf('the aera of the stream and water orifices=% f in^2',A1)
