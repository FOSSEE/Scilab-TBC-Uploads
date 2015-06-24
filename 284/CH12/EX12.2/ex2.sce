// Chapter 12_The junction field effect transistor
//Caption_Device characteristics
//Ex_2//page 558
T=300
Nd=10^18
Na=2*10^16
e=1.6*10^-19
eps=8.85*10^-14*11.7
ni=1.5*10^10
Vp=2.25     //pinchoff voltage
Vbi=0.0259*log(Na*Nd/ni^2)
Vpo=Vp+Vbi
a=(2*eps*Vpo/(e*Na))^0.5*10^4
printf('Metallurgical channel thickness is %1.3f micrometer',a)
