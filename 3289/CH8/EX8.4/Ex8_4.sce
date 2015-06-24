clc

dn=0.1 //m
do=0.5 //m
t=0.08 //m
w=6900*(2*%pi/60) //rpm
row=7.8*10^3//Ns^2/m^4
E=200*10^9 //Pa
v=0.3
b=0.05
c=0.25


//solution a:
//ud=((0.05*3.3*0.7)*(0.0025+0.0625-(1.3/3.3)*0.0025+(1.3/0.7)*0.0625)*row*w^2)/(8*E)
ud=((0.05*3.3*0.7)*(b^2+c^2-(1.3/3.3)*b^2+(1.3/0.7)*c^2))/(8)
disp(ud,"radial displacement of the disk in meter is= ")

//us=((0.05*0.7)*(3.3*0.0025-1.3*0.0025)*row*w^2)/(8*E)
us=((0.05*0.7)*(3.3*b^2-1.3*b^2))/(8)
disp(us,"radial displacement of the shaft in meter is= ")
delta=(ud-us)*row*w^2/E
disp(delta)

//solution b:
//p=E*delta*(c^2-b^2)/(2*b*c^2)
p=E*delta*(c^2-b^2)/(2*b*c^2)
disp(p,"in Pa is= ")
sigmathetamax=p*(c^2+b^2)/(c^2-b^2)
disp(sigmathetamax,"in Pa is= ")

//solution c:
sigmathetamax=3.3*(b^2+c^2-(1.9/3.3)*b^2+c^2)*row*w^2/8
disp(sigmathetamax,"in Pa is= ")
