//To find the velocity, KE and compression
clc
//Given:
s=0.7*10^6 //N/m
m1=10*10^3,m2=15*10^3 //kg
v1=1.8,v2=0.6 //m/s
//Solution:
//Calculating the common velocity when moving together during impact
v=(m1*v1+m2*v2)/(m1+m2)
//Calculating the kinetic energy lost to the system
E=(1/2*m1*v1^2+1/2*m2*v2^2)-1/2*(m1+m2)*v^2
//Calculating the compression of each buffer spring
x=sqrt(E/(2*s))
//Calculating the velocity of each truck on separation
//Final KE after separation=KE at common velocity+Half of energy stored in springs.
//And initial and final momentum must be equal.
//Simplifying the two equations, we get,
//1/2*m1*v3^2+1/2*m2*v4^2=1/2*(m1+m2)*v^2+1/2*E        .....(i)
//m1*v3+m2*v4=(m1+m2)*v
function y=f(x)
    v3=x(1)
    v4=x(2)
    y(1)=1/2*m1*v3^2+1/2*m2*v4^2-1/2*(m1+m2)*v^2-1/2*E
    y(2)=m1*v3+m2*v4-(m1+m2)*v
endfunction
z=fsolve([1,1],f)
v3=z(1)
v4=z(2)
//Results:
printf("\n\n The common velocity when moving together during impact, v = %.2f m/s.\n",v)
printf(" The kinetic energy lost to the system is %.2f kN-m.\n",E/1000)
printf(" The compression of each buffer spring, x = %d mm.\n",x*1000)
printf(" The velocity of separation for 10 tonnes truck, v3 = %.1f m/s.\n",v3)
printf(" The velocity of separation for 15 tonnes truck, v4 = %.1f m/s.\n",v4)