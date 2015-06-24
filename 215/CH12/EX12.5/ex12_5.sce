clc
//Example 12.5
//Calculate amplitude of line current
disp('Given')
disp('Line voltage = 300V, Power factor=0.8(lag), Phase power = 1200W')
Vline=300;pf=0.8;PW=1200;
disp('1200W will be consumed as 400W in each phase')
Vp=400
//Phase current be Ip
Ip=Vp/(Vline*pf)
//Let amplitude of line current be IL
IL=Ip*sqrt(3)
printf("Line current=%3.2f A \n",IL)
//Let Zp be the phase impedance
Zpmag=Vline/Ip
//Sice power factor is 'lagging'
Zpang=(acos(0.8)*180)/%pi
printf("Phase impedance = %d(%3.2f deg)ohm",Zpmag,Zpang);