clc
//Example 12.3
//Calculate the line current and phase impedance
disp('Given')
disp('Line voltage = 300V, Power factor=0.8(lead), Phase power = 1200W')
Vline=300;pf=0.8;PW=1200;
Vp=Vline/sqrt(3)
PerPhpower=PW/3;
//Line current can be found as
IL=PerPhpower/(pf*Vp)
printf("Line current= %3.2f A \n",IL)
//Let Zp be the phase impedance
Zpmag=Vp/IL
//Sice power factor is 'leading'
Zpang=-(acos(0.8)*180)/%pi
printf("Phase impedance = %d/_%3.2f deg ohm",Zpmag,Zpang);