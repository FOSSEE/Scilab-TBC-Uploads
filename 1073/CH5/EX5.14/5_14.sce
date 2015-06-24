
clc 
clear 
//Example 5.14
//Properties of crude oil:
Cpc=1.986   ;              //[kJ/(kg.K)]
mu1=2.9*10^-3;             //[N.s/sq m]
k1=0.136     ;             //[W/m.K]

rho1=824      ;            //[kg/m^3]

//Properties of bottom product:
Cp2=2.202      ;          //[kJ/kg.K]
rho2=867        ;         //[kg/m^3]
mu2=5.2*10^-3   ;         //[N.s/sq m]
k2=0.119        ;         //[W/sq m.K]

mc_dot=135000    ;           //Basis: cruid oil flow rate in [kg/h]
m_dot=106000     ;           //Bottom product flow rate inn [kg/h]
t1=295           ;        //[K]
t2=330           ;        //[K]
T1=420           ;        //[K]
T2=380           ;        //[K]
dT1=T1-t2                //[K]
dT2=T2-t1                //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)         //[K]
Q=mc_dot*Cpc*(t2-t1)                //kJ/h
Q=Q*1000/3600                       //[W]

//Shell side calculations:
Pt=25            ;                    //[mm]
Pt=Pt/1000       ;                   //[m]
B=0.23           ;                    //[m]
Do=0.019         ;                     //[m]Outside diameter for square pitch 
c_dash=Pt-Do                        //Clearance in [m]
id=0.6           ;                     //[m]
as=id*c_dash*B/Pt                     // Cross flow area of shell [sq m]
//since there is a Calculaiton mistake ,we take:
as=0.0353;
Gs=m_dot/as                           //Shell side mass velocity in [kg/sq m.h]
Gs=Gs/3600;                            //[kg/sq m.s]
De=4*(Pt^2-(%pi/4)*Do^2)/(%pi*Do)     //[m]
Nre=De*Gs/mu2                         //Reynolds number
Npr=Cp2*1000*mu2/k2                        //Prandtl number
muw=mu2                             //Since mu/muw=1
Nnu=0.36*(Nre^0.55)*Npr^(1.0/3.0)*(mu2/muw)^(0.14)      //Nusselt number
ho=Nnu*k2/De                        //[W/sq m.K]

//Tube side heat transfer coefficient:
n=324      ;             //No. of tubes
n_p=324/2   ;            //No.of tubes per pass
t=2.1         ;          //Thickness in [mm]
t=t/1000     ;           //[m]
Di=Do-2*t                 //I.d of tube in [m]
A=(%pi/4)*(Di^2)        //Cross-sectional area of one tube in [sq m]
A_p=n_p*A               //Total area for flow per pass in [sq m]
G=mc_dot/A_p            //[kg/sq m h]
G=G/3600                //[kg/sq m.s]
Nre=Di*G/mu1            //Reynolods number
Npr=42.35 ;              //Prandtl number
Nnu=0.023*(Nre^0.8)*(Npr^0.4)       //Nusselt number
hi=Nnu*k1/Di                         //[W/sq m.K]
hio=hi*Di/Do                        //[W/sq m.K]
Uo=1/(1/ho+1/hio)                   //[W/sq m.K]
Uc=Uo
L=4.88 ;                             //Length of tube in [m]
Ao=n*%pi*Do*L                       //[sq m]
Ud=Q/(Ao*dTlm)                      //[W/sq m.K]
Rd=(Uc-Ud)/(Uc*Ud)                  //[m^2.K/W]
printf("\n The calculation of line no.36 to calculated as is wrongly done in Book by printing 0.0353,,..which is wrong\n");
printf("\nRd=%f K/w,or 7.34*10^-4 which is less than the provided,so this if installed will not give required temperarues without frequent cleaning\n\n",Rd); 

