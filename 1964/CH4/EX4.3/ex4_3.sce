//Chapter-4, Example 4.3, Page 132
//=============================================================================
clc
clear
//CALCULATIONS
v1=0;v2=5;v3=10;v4=20;v5=50;v6=60;v7=50;v8=20;v9=10;v10=5;v11=0;v12=-5;v13=-10;
Vm=60;
V=((v1^2)+(v2^2)+(v3^2)+(v4^2)+(v5^2)+(v6^2)+(v7^2)+(v8^2)+(v9^2)+(v10^2))
V=sqrt(V/10);
Vav=(v1+v2+v3+v4+v5+v6+v7+v8+v9+v10)/10;//average value
Kf=V/Vav;//form factor
Kp=Vm/V;//peak factor
rms2=Vm/(sqrt(2));//rms voltage value with the same peak value
mprintf("rms1 =%2.2f volts\n average value=%d volts \n form factor= %2.2f \n peak factor= %1.3f \n rms2 value is %2.2f volts",V,Vav,Kf,Kp,rms2);
//=================================END OF PROGRAM==============================
