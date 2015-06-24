clc

w=0.1 //m
d=0.115 //m
l=4 //m
p=175 //kN/m
k=14*10^6 //Pa
E=200*10^9 //Pa
I=(0.1*(0.15)^3)

//deltav=(p/2*k)*derivative(x)*beta*exp^(betax)*(cos beta(x)+sin beta(x))
//vA=(p/2k)*(2-exp^(betaa)*cos betaa - exp^(betab)*cos betab)

beta=(k/(4*E*I/12))^(0.25)
disp(beta,"in meter inverse is= ")

vmax=(p*(2-(-0.0345)-(0.0345)))/(2*14000)
disp(vmax,"in meter is= ")
z=k*vmax
disp(z,"maxi force per unit of length between beam & foundation in kN/m is= ")

// Ans varies due to round of error
