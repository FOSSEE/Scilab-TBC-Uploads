//to find power absorbed and number of collars required
clc
//from equation 6.36 we know, M=(2/3)*u*W*(ri^3-r2^3)/(r1^2-r2^2)
//given
u=0.04
W=16//tons
w=W*2240//lbs
r1=8//in
r2=6//in
N=120
P=50//lb/in^2
M=(2/3)*u*w*(r1^3-r2^3)/(r1^2-r2^2)
hp=M*2*%pi*N/(12*33000)//horse power absorbed
//from fig 137,effective bearing surface per pad is calsulate from the dimensions to be 58.5 in^2
A=58.5//in^2
n=w/(A*P)
x=floor(n)
printf("\n")
printf("Horsepower absorbed = %.2f\nNumber of collars required = %.f\n",hp,x)
