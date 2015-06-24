//Example 6.5, page no 136
clc
Kva=3000/3//kva per phase
v=2300/sqrt(3)//voltage per phase
//disp(v)
i=(1000*1000)/1330//current per phase
//disp(i)
s=i*.2
x=sqrt((v+s)^2+(s^2))
temp=((x/i)^2)-2**2//temp=(.2+R)**2
temp1=sqrt(temp)-(.2)
//disp(temp1)
//Answer difference is because of round off value of x
r=1.97//in ohms
T_br=(3*i*i*r*60)/(2*%pi*200)
printf("Initial braking torque is %f N-m",T_br)