clear;
clc;
//Example 17.4
Vx=-0.7;
Vy=-0.7;
iCxy=3.22;//(mA)
iCR=0;
i5=1.40;
i1=1.40;
Vor=-0.7;
R4=1.500;
Vnor=-1.4;
V2=-5.2;
R3=1.500;
i3=(Vor-V2)/R3;
printf('\ncurrent i3=%.2f mA\n',i3)
i4=(Vnor-V2)/R4;
printf('\ncurrent i4 =%.2fmA\',i4)
P=(iCxy+iCR+i5+i1+i3+i4)*(0-V2);
printf('\npower dissipation=%.2f mW\n',P)
