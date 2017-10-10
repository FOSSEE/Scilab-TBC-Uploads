clc;
clear;
v=1400;//rms voltage
f=60;//frequency 
kva1=125; pf1=0.28; //inductive load and lagging power factor
kw2=10; kvar2=-40; //active and reactive power of a capacitive load
kw3=15;//resistive load
theta1=acos(pf1);
s1=complex(125*cos(theta1),125*sin(theta1));
s2=complex(kw2,kvar2);
s3=complex(kw3,0);
s=s1+s2+s3;//total apparent power
mprintf("total apparent power,s=%d kW+%d kvar=%d angle%4.2f kVA \n",real(s),imag(s),abs(s),atan(imag(s),real(s))*180/%pi);
i=s'*1000/v';//total current
mprintf("total current,i=%4.2f angle %4.2f A\n",abs(i),atan(imag(i),real(i))*180/%pi);
thetai=atan(imag(i),real(i));
pf=cos(thetai);//lagging power factor
mprintf("power factor,PF= %2.1f lagging\n",pf);
p=real(s);//total active power
q=imag(s);//total reactive power
pfnew=0.8;//required power factor
mprintf("required pf,pfnew=%2.1f lagging\n",pfnew);
thetanew=acos(pfnew);
qnew=p*tan(thetanew);
qc=q-qnew;//capacitor kVar required
mprintf("required capacitor kvar,qc=%d kvar\n",qc)
xc=v*v/%i/qc/1000;
c=10^6/(2*%pi*f*abs(xc));
mprintf("capacitance,c=%4.2f uF\n",c);
snew=complex(p,qnew);
inew=snew'*1000/v';
mprintf("new current, inew=%4.2f angle %4.2f A\n",abs(inew),atan(imag(inew),real(inew))*180/%pi);
mprintf("note the reduction in supply current from 71.43 A to 53.57 A\n");
