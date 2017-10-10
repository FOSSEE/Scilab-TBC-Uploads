clc;
clear;
z=complex(0.4,2.7);//line impedance
r=real(z);
x=imag(z);
s1=560.1; pf1=0.707; ang1=acos(pf1);//load 1 lagging power factor
s2=132;pf2=1;ang2=acos(pf2);//load 2 unity power factor
v2l=3810.5;//line to line voltage at load end
v2=v2l/sqrt(3);//phase voltage
s3p=complex(s1*cos(ang1),s1*sin(ang1))+s2;//total complex power
i=s3p'*1000/3/v2';//line current
v1=v2+z*i;//sending end voltage
v1l=sqrt(3)*abs(v1);
mprintf("magnitude of line voltage at source end = %d V\n",v1l);
sl3p=3*r*abs(i)*abs(i)+%i*3*x*abs(i)*abs(i);//3phase power loss in line
mprintf("three phase power loss in line,sl3p=%d kW + j%d kvar\n",real(sl3p)/1000,imag(sl3p)/1000);
ss3p=3*v1*i';
mprintf("three phase sending end power,ss3p=%d kW+ j%d kvar\n",real(ss3p)/1000,imag(ss3p)/1000);
st=s3p+(sl3p/1000);
mprintf("total power consumed,st=%d kW+ %dkvar\n",real(st),imag(st));
mprintf("it is clear that the sum of laod powers and the line losses is equal to the power delivered from the supply\n");
