clc
clear
//DATA GIVEN
p1=18;                             //maximum pressure in bar
T1=410+273;                        //maximum temperature in K
T2=T1;
Rac=6;                             //ratio of isentropic or adiabatic compression, V4/V1=6
Rie=1.5;                           //ratio of isothermal expansion, V2/V1=1.5
V1=0.18;                           //volume of air at beginning of isothermal expansion in m^3
wc=210;                            //no. of cycles per s

//gamma for air=1.4
g=1.4;

//for isentropic process 4-1
//Also (T1/T4)=(V4/V1)^(g-1)
//(V4/V1)=Rac
T4=T1/Rac^(g-1);
T3=T4;
//p1(V1^gamma)=p4(V4^gamma)
//p4=p1*(V1/V4)^g
//where, (V4/V1)=Rac
p4=p1/(Rac^g);

//for isothermal process 1-2
//p1V1=p2V2
//V1/V2=1/Rie
p2=p1*(1/Rie);

//for isentropic process 2-3
//p2(V2^gamma)=p3(V3^gamma)
//V2/V3=V1/V4=1/Rac
p3=p2*(1/Rac)^g;

//change in entropy, DS=S2-S1=mRlog(V2/V1)=p1V1/T1*log(V2/V1)
DS=p1*10^5*V1/10^3/T1*log(Rie);

//Heat supplied, Qs=p1*V1*log(V2/V1)
//Qs=T1(S2-S1)
Qs=T1*DS;
//Qr=p4*V4*log(V3/V4)                   //heat rejected in kJ
//Qr=T4(S3-S4), bcs increase in entropy during heat addition is equal to decrease in entropy during heat rejection
Qr=T4*DS;

ETA=(Qs-Qr)/Qs;                         //mean thermal efficiency of the cycle

//mean effective pressure of the cycle, Pm = work done per cycle/stroke volume
Rv31=Rac*Rie;                           //ratio of volumes at 3 and 1, V3/V1=V3/V2*V2/V1
//stroke volume, Vs=V3-V1
Vs=V1*(Rv31-1);
J=1;
Pm=(Qs-Qr)*10^3/10^5*J/Vs;

P=(Qs-Qr)*wc/60;                        //power of the engine in kW

printf(' (i) The Pressure and Temperature at point 1 are:\n');
printf('                p1:%2.0f bar.\n',p1);
printf('                T1:%3.0f K.\n',T1);
printf('      The Pressure and Temperature at point 2 are:\n');
printf('                p2:%2.0f bar.\n',p2);
printf('                T2:%3.0f K.\n',T2);
printf('      The Pressure and Temperature at point 3 are:\n');
printf('                p3:%1.2f bar.\n',p3);
printf('                T3:%3.1f K.\n',T3);
printf('      The Pressure and Temperature at point 4 are:\n');
printf('                p4:%1.2f bar.\n',p4);
printf('                T4:%3.1f K.\n',T4);
printf(' (ii) The Change in entropy during isothermal expansion is: %1.3f kJ/K. \n',DS);
printf('(iii) The Mean thermal efficiency of the cycle is: %1.3f or %2.1f percent. \n',ETA,(ETA*100));
printf(' (iv) The Mean effective pressure is: %1.3f bar. \n',Pm);
printf('  (v) The Power of the engine working on this cycle is given by: %3.1f kW.',P);

//NOTE:
//there is slight variation in answers of book due to rounding off of the values
