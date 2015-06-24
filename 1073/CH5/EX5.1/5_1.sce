

clc;
clear;
//Example 5.1
Di=35       //[mm]
Di=Di/1000      //[m]
Do=42       //[mm]
Do=Do/1000      //[m]
//for benzene
mb_dot=4450     //[kg/h]
Cpb=1.779       //[kJ/(kg.K)]
t2=322          //[K]
t1=300  //[K]
Q=mb_dot*Cpb*(t2-t1)        //for benzene in [kJ/h]

//For toulene
T1=344  //[K]
T2=311      //[K]
Cpt=1.842       //[kJ/kg.K]
mt_dot=Q/(Cpt*(T1-T2))      //[kg/h]
Q=Q*1000/3600           //[W]
//Hot fluid(toluene)
//Cold fluid(benzene)
dT1=22      //[K]
dT2=11      //[K]
dTlm=(dT1-dT2)/(log(dT1/dT2))       //[K]

//Clod fluid:Inner pipe,benzene
Di=0.035        //[m]
Ai=(%pi/4)*Di^2     //Flow area[sq m]
Gi=mb_dot/Ai        //Mass velocity [kg/m^2.h]
Gi=Gi/3600          //[kg/m^2.s]
mu=4.09*10^-4       //[kg/(m.s)]
Nre=Di*Gi/mu        //Reynolds number

Cp=Cpb*10^3         //[J/(kg.K)]
k=0.147             //[W/m.K]
Npr=Cp*mu/k         //Prandtl number
hi=(k/Di)*0.023*(Nre^0.8)*(Npr^0.4)     //[W/sq m.K]
hio=hi*Di/Do            //[W/sq m.K]
D1=0.042                //Outside dia of inside pipe[mm]
D2=0.0525           //Inside dia of outside pipe[m]
De=(D2^2-D1^2)/D1           //[m]
De=0.0236               //Approximated 
aa=%pi*(D2^2-D1^2)/4           //Flow area[sq m]
Ga=mt_dot/aa        //Mass velocity in [kg/m^2.h]
Ga=Ga/3600          //[kg/m^2.s]
mu=5.01*10^-4       //[kg/(m.s)]
Nre=De*Ga/mu        //Reynolds number
Npr=Cp*mu/k     //Prandtl number
ho=(k/De)*0.023*(Nre^0.8)*(Npr^0.3)     //[W/sq m.K]
Uc=1/(1/ho+1/hio)       //[W/sq m.K]
Rdi=1.6*10^-4           //Fouling factor [m^2.K/W]
Rdo=1.6*10^-4           //Fouling factor[m^2.K/W]
Rd=Rdi+Rdo              //(m^2.K/W)
Ud=1/(1/Uc+Rd)          //[W/sq m.K]
A=Q/(Ud*dTlm)           //sq m
ex=0.136                    //[sq m]
l=A/ex                  //m
tl=12       //Total length of one harpin of 6m [m]
printf("b%f",l);
printf("\n\Required surface is fulfilled by connecting %d(three) 6m harpins in series\n",round(l/tl))
