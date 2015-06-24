clc
clear
//DATA GIVEN
P=35;                       //power required to be transmitted by the belt in kW
d=1.5;                      //effective diameter of pulley in m
N=300;                      //speed of the pulley in R.P.M.
theta=11/24*2*%pi;          //angle of contact in radians
mu=0.3;                     //coefficient of friction
t=0.0095;                   //thickness of the belt in m
rho=1100;                   //density of the material in kg/m^3
sigma=2.5;                  //permissible stress in MN/m^2

v=%pi*d*N/60;               //speed of the belt in m/s
//P=(T2-T1)*v, so (T2-T1)=P/v....................(1)
c=%e^(mu*theta);            //so, T2/T1=c........(2)
//By equation (1) and (2),
T2=(P/v*1000)/(c-1);        //tension in the slack side in N
T1=c*T2;                    //tension in the tight side in N

//maximum tension, Tmax=sigma*b*t=0.2375*b*10^6 N    (3)
//centrifugal tension, Tc=m*v^2=5800.5*b N           (4)
//T1=Tmax-c                                          (5)
//By eqn. (3),(4) and (5)
b=T1/((sigma*10^6*t)-(t*1*rho*v^2));      //width of the belt in m

printf(' The Width of the belt is: %3.0f mm (say 150 mm). \n',(b*1000));
