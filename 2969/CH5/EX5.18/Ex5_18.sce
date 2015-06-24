clc
clear
//DATA GIVEN
L=0.25;                            //stroke of the engine in m
D=0.15;                            //diameter of cylinder in m
V2=0.0004;                         //clearance volume in m^3
Vs=(%pi/4)*D^2*L;                  //swept volume in m^3
Vt=Vs+V2;                          //total cylinder volume in m^3
c=5;                               //fuel injection takes place at 'c' percent of stroke
V3=V2+c/100*Vs;                    //volume at point of cut-off in m^3
rho=V3/V2;                         //cut-off ratio
r=(Vs+V2)/V2;                      //compression ratio

//for air, gamma=1.4
g=1.4;

//Air standard efficiency of diesel cycle ETAdiesel=1-[1/(r)^(g-1)][(rho^g-1)/(rho-1)]
ETAdiesel=1-[1/g/(r)^(g-1)]*[(rho^g-1)/(rho-1)];

printf(' The Efficiency of diesel engine is: %1.3f or %2.1f percent. \n',ETAdiesel,(ETAdiesel*100));

