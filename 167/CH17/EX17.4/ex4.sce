//ques4
//Critical Temperature and Pressure in Gas Flow
clear
clc
k=1.289;
T0=473;//Temp at in K
Tx=T0*2/(k+1);//Temp in K
P0=1400//pressure in kPa
Px=P0*(2/(k+1))^(k/(k-1));//Pressure in kPa
printf('T* = %.0f K \n',Tx);
printf(' P* = %.0f kPa \n',Px);

