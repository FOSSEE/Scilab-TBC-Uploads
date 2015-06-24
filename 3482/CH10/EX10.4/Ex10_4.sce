clc;
m=10;//kg, mass of rim
r=300;//mm, radius of disk
a=0.08;//m
b=0.3;//m
k=4;//kN/m
g=9.81;//m/s^2  gravity
//From theory we get

//sin(theta)=k*a^2/m/g/b*theta
dif=1;
for theta=0:0.001:1
    dif=sin(theta)-k*a^2/m/g/b*theta;
    if dif<=0.001 then printf("theta= %.3f rad or %.1f degrees\n",theta,theta/%pi*180);
    end
end


