clc
clear
//DATA GIVEN
V1=0.45;                        //volume in m^3
p1=1;                           //initial pressure in bar
T1=30+273;                      //initial temperature in K
p2=11;                          //pressure at the end of compression stroke in bar
Qs=210;                         //heat addaed at constant volume in kJ
wc=210;                         //no. of working cycles/min

//for air, gamma=1.4
g=1.4;

//for adiabatic compression 1-2
//p1(V1^gamma)=p2(V2^gamma)
//(V1/V2)=r
r=(p2/p1)^(1/g);
//Also (T2/T1)=(V1/V2)^(g-1)
//(V1/V2)=r
T2=T1*r^(g-1);

//Applying gas laws to points 1 and 2
//p1V1/T1=p2V2/T2
V2=T2/T1*p1/p2*V1;

//heat supplied during process 2-3, Qs=mCv(T3-T2)
R=287; 
m=p1*10^5*V1/R/T1;
Cv=R/1000/(g-1);
T3=Qs/m/Cv+T2;

//for constant volume process 2-3
//p3/T3=p2/T2
p3=p2/T2*T3;
V3=V2;

//for adiabatic expansion 3-4
//p3(V3^gamma)=p4(V4^gamma)
//(V4/V3)=r
p4=p3*(1/r)^(g);
//Also T3/T4)=(V4/V3)^(g-1)
//(V4/V3)=r
T4=T3/r^(g-1);
V4=V1;

//percentage clearance, pc=Vc/Vs=V2/(V1-V2)
pc=V2/(V1-V2)*100;

//heat rejected per cycle, Qr=Cv*(T4-T1)
Qr=m*Cv*(T4-T1);

//Air standard efficiency of otto cycle ETAotto=(Qs-Qr)/Qs
ETAotto=(Qs-Qr)/Qs;
//Alternatively
//ETAotto=1-1/(r)^(g-1)
ETAotto=1-1/(r)^(g-1);

//mean effective pressure, Pm=W/Vs
W=Qs-Qr;                        //work done per kg of air
Vs=V1-V2;
Pm=W*10^3/10^5/Vs;

//power developed, P=work done per cycle*no. of cycles per s
P=W*(wc/60);

printf(' (i) The Pressure, Temperature and Volumes at salient points in the cycle are:\n');
printf('      At point 1 are:\n');
printf('                p1:%1.1f bar.\n',p1);
printf('                V1:%1.2f m^3.\n',V1);
printf('                T1:%3.0f K.\n',T1);
printf('      At point 2 are:\n');
printf('                p2:%2.2f bar.\n',p2);
printf('                V2:%1.3f m^3.\n',V2);
printf('                T2:%3.0f K.\n',T2);
printf('      At point 3 are:\n');
printf('                p3:%2.2f bar.\n',p3);
printf('                V3:%1.3f m^3.\n',V3);
printf('                T3:%4.0f K.\n',T3);
printf('      At point 4 are:\n');
printf('                p4:%1.2f bar.\n',p4);
printf('                V4:%1.2f m^3.\n',V4);
printf('                T4:%3.1f K.\n',T4);
printf(' (ii) The Percentage clearance is: %2.2f percent. \n',pc);
printf('(iii) The Air standard efficiency of the cycle is: %1.3f or %2.1f percent. \n',ETAotto,(ETAotto*100));
printf(' (iv) The Mean effective pressure is: %1.3f bar. \n',Pm);
printf('  (v) The Power developed is: %3.1f kW.',P);

//NOTE:
//there is slight variation in answers in the book because of rounding off of the values
