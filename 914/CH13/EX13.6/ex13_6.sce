clc;
warning("off");
printf("\n\n example13_6 - pg684");
// given
d=1*0.0254;  //[m]
Lr=d/2;  //[m];
Lz=(1.2/2)*(0.0254);
x=Lz;
r=Lr;
k=0.481;
h=20;
mr=k/(h*Lr);
mz=k/(h*Lz);
nr=r/Lr;
nz=x/Lz;
t=1.2;  //[sec]
alpha=1.454*10^-4;
Xr=(alpha*t)/(Lr^2);
Xz=(alpha*t)/(Lz^2);
// using the above value of m,n,X the value for Ycz and Ycr from fig 13.14 is
Ycr=0.42;
Ycz=0.75;
Yc=Ycr*Ycz;
T_infinity=400;  //[K]
To=295;
Tc=T_infinity-(Yc*(T_infinity-To));
printf("\n\n The temperature t the centre is \n Tc = %f K",Tc);


