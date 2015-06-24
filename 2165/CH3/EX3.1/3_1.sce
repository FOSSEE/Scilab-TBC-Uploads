clc
//initialisation of variables
p=100//lb/in^2
x=0.8//lb
t1=164//degree C
t2=4.45 //ft^3
p1=0.016//ft^3
h1=493.4//C.H.U/lb
h2=165.9//C.H.U/lb
S=h2+h1//C.H.U/lb
w=(144*p)/1400*(t2-p1)//C.H.U/lb
H=h2+(x*h1)//C.H.U//lb
w1=(x*144*p)/1400*(t2-p1)//C.H.U
//CALCULATIONS
E=S-w//C.H.U/lb
IE=H-w1//C.H.U/lb
//RESULTS
printf('The steam is total heat dry and satured=% f C.H.U/lb',E)
printf('Total heat of wet steam=% f C.H.U/lb',IE)
