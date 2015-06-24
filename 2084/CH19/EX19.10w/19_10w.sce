//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.10w
//calculation of the near point and the distance of the retina from the lens 

//given data
P1=50//power1(in D) of the lens
P2=60//power2(in D) of the lens

//calculation
//for the eye in fully relaxed condition,the focal length is the largest.
//larger the focal length,smaller is the power of lens
if(P1<P2)
    P=P1
else
    P=P2
end
f=1/P//distance of the retina from lens ,equal to the focal length
//for eye focused at near point the power is maximum
if(P1>P2)
    Pdash=P1
else
    Pdash=P2
end
fdash=1/Pdash//focal length
v=abs(f)//image is formed at the retina
u=1/((1/v)-(1/fdash))//near point......using the lens formula

printf('the distance of the retina from the lens is %d cm',f*10^2)
printf('\nthe near point is at %d cm',abs(u*10^2))

