clc
//Example 12.6
//Calculate amplitude of line current
disp('Given')
disp('Line voltage = 300V, Power factor=0.8(lag), Phase power = 1200W')
Vline=300;pf=0.8;PW=1200;
Vph=Vline/sqrt(3)
disp('1200W will be consumed as 400W in each phase')
Vp=400
//Let phase current be Ip
Ip=Vp/(Vph*pf)
printf("Phase current=%3.2f A \n",Ip)
//Let Zp be the phase impedance
Zpmag=Vph/Ip
//Sice power factor is 'lagging'
Zpang=(acos(0.8)*180)/%pi
printf("Phase impedance = %d(%3.2f deg)ohm\n",Zpmag,Zpang);
//PW=sqrt(3)*VL*IL*pf
IL=PW/(sqrt(3)*Vline*pf)
printf("Line current=%3.2f A \n",IL)