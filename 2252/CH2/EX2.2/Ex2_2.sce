
epsilon=8.854D-12
E1=(4D-8)/(4*%pi*epsilon*.05^2)//field intensity due to charge at A,direction is from D to A
r=sqrt(2*.05^2)//distance b/w B and D
E2=(4D-8)/(4*%pi*epsilon*r^2)//field intensity due to charge at B,direction is from B to D along diagonal BD
E3=(8D-8)/(4*%pi*epsilon*.05^2)//field intensity due to charge at C,direction is from D to C
//Er has horizontal and vertical components as Erx and Ery respectively
Erx=E3-E2*cos(45*%pi/180)
Ery=-E1+E2*sin(45*%pi/180)
Er=sqrt(Erx^2+Ery^2)
theta=atand(Ery/Erx)
mprintf("Resultant intensity on charge at C=%f*10^4 N/C at angle %f degrees", Er/10^4,-theta)
