clc;
clear;
z=complex(2,4);//line impedance
zy=complex(30,40);//impedance per phase of Y connected load
zdel=complex(60,-45);//impedance of delta connected load
vl=207.85;//line voltage
z2=zdel/3;//impedance per phase of equivalent Y network
v1=vl/sqrt(3);//phase voltage
mprintf("phase voltage,v1=%d V\n",v1);
zt=z+(zy*z2/(zy+z2));//total impedance
mprintf("total impedance,z=%d ohms\n",zt);
i=v1/abs(zt);//current in phase a
s=3*v1*i';//3 phase power supplied
mprintf("three phase power supplied,s=%d W\n",s);
v2=v1-(z*i);//load terminal voltage
v2ab=complex(sqrt(3)*cos(%pi/6),sqrt(3)*sin(%pi/6))*v2;//line voltage at load terminal
mprintf("line voltage at load terminal,v2ab=%5.2f angle %3.1f V\n",abs(v2ab),atan(imag(v2ab),real(v2ab))*180/%pi);
i1=v2/zy;//current per phase in Y connected load
i2=v2/z2;//current per phase in equivalent Y of the delta load
iab=i2/complex(sqrt(3)*cos(-%pi/6),sqrt(3)*sin(-%pi/6));//phase current in original delta connected load
mprintf("phase current in original delta connection,iab= %4.3f angle %4.2f A\n",abs(iab),atan(imag(iab),real(iab))*180/%pi);
s1=3*v2*i1';
s2=3*v2*i2';
sl=3*z*abs(i)*abs(i);
stotal=s1+s2+sl;
mprintf("total power absorbed by loads plus power consumed at line losses,stotal=%d W + %dvar\n",real(stotal),imag(stotal));
mprintf("it is clear that the sum of load powers and line losses is equal to the power delivered from the supply.\n");
