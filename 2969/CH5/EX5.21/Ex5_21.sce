clc
clear
//DATA GIVEN
D=0.2;                             //bore of the engine in m
L=0.3;                             //stroke of the engine in m
p1=1;                              //initial pressure in bar
T1=27+273;                         //initial temperature in K
c=8;                               //cut-off % of stroke volume
r=15;                              //compression ratio
wc=380;                            //no. of cycles per s

Vs=(%pi/4)*D^2*L;                  //swept volume in m^3
V1=Vs*(1+1/(r-1));                 //in m^3
//for air, gamma=1.4
g=1.4;

R=287;
m=p1*10^5*V1/R/T1;                 //mass of air  in the cylinder in kg/cycle

//for adiabatic process 1-2
//p1(V1^gamma)=p2(V2^gamma)
//p2=p1*(V1/V2)^g
//where, (V1/V2)=r
p2=p1*(r^g);                                    //pressure at 2 in bar
//Also (T2/T1)=(V1/V2)^(g-1)
//(V1/V2)=r
T2=T1*r^(g-1);
V2=Vs/(r-1);
Vc=V2;
p3=p2;

//cut-off ratio, c=(rho-1)/(r-1)
rho=c/100*(r-1)+1;
V3=rho*V2;
//alternatively
V3=c/100*Vs+Vc;

//for constant pressure process 2-3
//V3/T3=V2/T2
T3=T2/V2*V3;

//for isentropic process 3-4
//p3(V3^gamma)=p4(V4^gamma)
//(V4/V)=V4/V2*V2/V3=V1/V2*V2/V3=r/rho
p4=p3*((rho/r)^g);
//Also (T4/T3)=(V3/V4)^(g-1)
//(V4/V)=V4/V2*V2/V3=V1/V2*V2/V3=r/rho
T4=T3*((rho/r)^(g-1));
V4=V1;

//Air standard efficiency of diesel cycle ETAdiesel=1-[1/(r)^(g-1)][(rho^g-1)/(rho-1)]
ETAdiesel=1-[1/g/(r)^(g-1)]*[(rho^g-1)/(rho-1)];

//mean effective pressure, Pm=p1*r^g*[g*(rho-1)-r^(1-g)*(rho^g-1)]/[(g-1)*(r-1)];
Pm=p1*r^g*[g*(rho-1)-r^(1-g)*(rho^g-1)]/[(g-1)*(r-1)];

P=Pm*10^5*Vs/10^3*(wc/60);              //Power of the engine in kW

printf(' (i) The Pressure, Temperature and Volumes at salient points in the cycle are:\n');
printf('      At point 1 are:\n');
printf('                p1:%1.1f bar.\n',p1);
printf('                V1:%1.4f m^3.\n',V1);
printf('                T1:%3.0f K.\n',T1);
printf('      At point 2 are:\n');
printf('                p2:%2.2f bar.\n',p2);
printf('                V2:%1.7f m^3.\n',V2);
printf('                T2:%3.1f K.\n',T2);
printf('      At point 3 are:\n');
printf('                p3:%2.2f bar.\n',p3);
printf('                V3:%1.6f m^3.\n',V3);
printf('                T3:%4.1f K.\n',T3);
printf('      At point 4 are:\n');
printf('                p4:%1.3f bar.\n',p4);
printf('                V4:%1.4f m^3.\n',V4);
printf('                T4:%3.2f K.\n',T4);
printf(' (ii) The Theoritical air standard efficiency of diesel cycle is: %1.3f or %2.1f percent. \n',ETAdiesel,(ETAdiesel*100));
printf('(iii) The Mean effective pressure is: %1.3f bar. \n',Pm);
printf(' (iv) The Power developed is: %2.2f kW.',P);
