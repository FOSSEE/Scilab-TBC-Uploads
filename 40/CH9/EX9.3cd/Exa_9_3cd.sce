//modified Impulse invariant Design
//(c)H(s)=4s+7/s^2+5s+4
s=%s;z=%z;
HS=(4*s+7)/(s^2+5*s+4);
[d1]=degree(numer(HS));
[d2]=degree(denom(HS));
HZ=((3*z)/(z-%e^-2))+(z/(z-%e^-0.5))
if (d2-d1==1) then
    h=(4+7/%inf)/(1+5/%inf+4/%inf)
    HMZ=HZ-0.5*h
else
    HMZ=HZ
end
HS1=4/((s+1)*(s^2+4*s+5))
HZ1=(0.2146*z^2+0.093*z)/(z^3-1.2522*z^2+0.527*z-0.0821);
[d1]=degree(numer(HS1));
[d2]=degree(denom(HS1));
if (d2-d1==1) then
    HMZ1=HZ1-0.5*h
else
    HMZ1=HZ1
end
