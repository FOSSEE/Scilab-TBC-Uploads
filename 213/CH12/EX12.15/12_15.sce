//To find axial thrust
clc
//Given:
L=175/1000, d2=100/1000, r2=d2/2 //m
theta=70 //degrees
G=1.5, T2=80
Tf=75 //Torque on faster wheel, N-m
funcprot(0)
//Solution:
//Spiral angles for each wheel:
//Calculating the number of teeth on slower wheel
T1=T2*G
//Calculating the pitch circle diameter of the slower wheel
d1=(L*2)-d2 //m
//Calculating the spiral angles
//We have, d2/d1 = (T2*cos(alpha1))/(T1*cos(alpha2)), or T2*d1*cos(alpha1)-T1*d2*cos(alpha2) = 0    .....(i)
//Also, alpha1+alpha2 = theta, or alpha1+alpha2-theta = 0                                           .....(ii)
function y=f(x)
    alpha1=x(1)
    alpha2=x(2)
    y(1)=T2*d1*cos(alpha1)-T1*d2*cos(alpha2)
    y(2)=alpha1+alpha2-theta*%pi/180
endfunction
z=fsolve([1,1],f)
alpha1=z(1)*180/%pi //Spiral angle for slower wheel, degrees
alpha2=z(2)*180/%pi //Spiral angle for faster wheel, degrees
//Axial thrust on each shaft:
//Calculating the tangential force at faster wheel
F2=Tf/r2 //N
//Calculating the normal reaction at the point of contact
RN=F2/cosd(alpha2) //N
//Calculating the axial thrust on the shaft of slower wheel
Fa1=RN*sind(alpha1) //N
//Calculating the axial thrust on the shaft of faster wheel
Fa2=RN*sind(alpha2) //N
//Results:
printf("\n\n Spiral angle for slower wheel, alpha1 = %.2f degrees.\n\n",alpha1)
printf(" Spiral angle for faster wheel, alpha2 = %.2f degrees.\n\n",alpha2)
printf(" Axial thrust on the shaft of slower wheel, Fa1= %d N.\n\n",Fa1+1)
printf(" Axial thrust on the shaft of faster wheel, Fa2 = %d N.\n\n",Fa2+1)