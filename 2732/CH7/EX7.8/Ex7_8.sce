clc
//initialization of new variables
clear
b=10075 //mm
h=10 //mm
p1=7.5
p2=9
//part (a)
ybar=1*p1*0.5+1*p2*5.5
ybar=ybar/16.5
xbar=1*p1*0.5+1*p1*4.75
xbar=xbar/16.5
printf('part (a)')
printf('\n Centroid coordinates (x,y) = (%.2f, %.2f) cm',xbar,ybar)

//part (b)
Ixx=p1*1^3/12+p1*1*(3.23-0.5)^2+1*p2^3/12+p2*1*(5.5-3.23)^2
Iyy=1*p1^3/12+p1*1*(3.75-2.43)^2+p2*1^3/12+p2*1*(2.43-0.5)^2
Ixy=p1*1.32*2.73+9*(-1.93)*(-2.27)
printf('\n part (b)')
printf('\n Moment of Areas: \n Ixx = %.1f cm^4 \n Iyy = %.1f cm^4 \n Ixy=%.1f cm^4',Ixx,Iyy,Ixy)

//part (c)
alpha=0.5*atan(2*Ixy/(Iyy-Ixx))
alpha=alpha*180/%pi
printf('\n part (c)')
printf('\n Direction of principal axes:')
printf('\n alpha = %.2f degrees',alpha)

//part (d)
Iuu=(Ixx+Iyy)/2+sqrt((Iyy-Ixx)^2/4+Ixy^2)
Ivv=(Ixx+Iyy)/2-sqrt((Iyy-Ixx)^2/4+Ixy^2)
printf('\n part (d)')
printf('\n Iuu = %.2f cm^4 \n Ivv = %.2f cm^4',Iuu,Ivv)
