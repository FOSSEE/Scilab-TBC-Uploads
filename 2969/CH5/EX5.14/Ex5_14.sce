clc
clear
//DATA GIVEN
D=0.25;                            //bore of the engine in m
L=0.375;                           //stroke of the engine in m
Vc=0.00263;                        //clearance volume in m^3
p1=1;                              //initial pressure in bar
T1=50+273;                         //initial temperature in K
p3=25;                             //maximum pressure in bar

Vs=(%pi/4)*D^2*L;                  //swept volume
r=(Vs+Vc)/Vc;                      //compression ratio

//for air, gamma=1.4
g=1.4;
//Air standard efficiency of otto cycle ETAotto=1-1/(r)^(g-1)
ETAotto=1-1/(r)^(g-1);

//for adiabatic process 1-2
//p1(V1^gamma)=p2(V2^gamma)
//p2=p1*(V1/V2)^g
//where, (V1/V2)=r
p2=p1*(r^g);                                //pressure at 2 in bar
rp=p3/p2;                                   //pressure ratio
Pm=p1*r*[(r^(g-1)-1)*(rp-1)]/[(g-1)*(r-1)]; //mean effective pressure in bar

printf(' (i) The Air standard efficiency of otto cycle is: %1.3f or %2.1f percent. \n',ETAotto,(ETAotto*100));
printf(' (ii) The Mean effective pressure is: %1.3f bar. \n',Pm);
