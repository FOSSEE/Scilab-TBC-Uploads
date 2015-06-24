//Example 8.2
//Page no. 309

//Given
Cp=50          //tpd, plant capacity
T1=135         //C, Temp.
T2=40          //C temp.
T3=30          //C temp.
dt1=(T1-T2)    //C hot end temp. 
dt2=(T2-T3)    //C cold end temp.
//Properties of ethylbenzene
rho1=840       //kg/m^3, density
cp1=2.093      //kj/kg K , specific heat
T=87.5         //C
mu1=exp(-6.106+1353/(T+273)+5.112*10^-3*(T+273)-4.552*10^-6*((T+273)^2))
k1=0.2142-(3.44*10^-4)*(T+273)+(1.947*10^-7)*(T+273)^2
k1_=k1*0.86         //kcal/h m K
//properties of water
rho2=993      //kg/m^3, density
mu2=8*10^-4   //kg/m s , viscosity 
cp2=4.175     //kj/kg K , specific heat
k2=0.623      //W/m K, thermal conductivity
k2_=k2*0.8603  //kcal/h m^2 K
//Calculation
//(i) Energy balance
Cp=Cp*1000/24          //kg/h, plant capacity
Cp=2083       //approx.
HD=Cp*cp1*dt1      //kj/h, Heat duty 
HD_=HD*0.238837        //kcal/h
wfr=HD/(cp2*dt2)

//(ii)
mu1=mu1      //cP, viscosity of ethylbenzene
k1=k1        //W/m K, thermal conductivity of ethylbenzene

//(iii)
//LMTD calculation
LMTD=(dt1-dt2)/log(dt1/dt2)
//assume
Udo=350             //kcal/h m^2 C, overall coefficient
A=HD_/(Udo*LMTD)    //m^2, area required

//(iv)
id=15.7            //mm, internal diameter of tube
od=19              //mm, outer diameter of tube
l=3000             //mm, length
OSA=%pi*(od*10^-3)*(l*10^-3)  //m^2. outer surface area
n=A/OSA                       //no. of tubes required
fa=n*(%pi/4)*(id*10^-3)^2     //m^2, flow arae
lv=(wfr/1000)/(3600*fa)       //m/s, linear velocity

//(v)
n1=44             //total no. of tubes that can be accomodated in a 10 inch shell
np=11             //no. of tubes in each pass
//(vi)
bf=0.15          //m, baffel spacing
//(vii)
//estimation of heat transfer coefficient
//Tube side (water)
fa1=(%pi/4)*(id*10^-3)^2*np   //m^2, flow area
v1=(wfr/1000)/(3600*fa1)      //m/s, velocity
Re=(id*10^-3)*v1*rho2/mu2     //Reynold no.
//from fig . 8.11(a)
jh=85                         //colburn factor
//jh=(hi*di)/k*(cp*mu/k)^-1/3     
//assume,   (cp*mu/k)=x
hi=jh*(k2_/(id*10^-3))*(cp2*1000*mu2/k2)^(1/3)  //kcal/h m^2 C

//shell side(organic)
c=(25.4-od)*10^-3          //m, clearance b/w 2 adjacent tubes
B=bf                       //m, baffel spacing
p=0.0254                   //m,radius of 1 tube
Ds=0.254                   //m, inside diameter of shell
//from eq. 8.32
As=c*B*Ds/p                //m^2, flow area
Gs=Cp/As                   //kg/m^2 h, mass flow rate of shell fluid
do=od/10                   //cm, outside diameter of shell
//from eq. 8.31
Dh=4*((0.5*p*100)*(0.86*p*100)-((%pi*(do)^2)/8))/((%pi*do)/2)
Dh_=Dh*10^-2              //m, hydrolic diameter
Re1=(Dh_*Gs)/(3600*(mu1*10^-3))   //Reynold no.
//from fig 8.11(b)
jh1=32                           //colburn factor
ho=jh1*(k1_/Dh_)*((6)^(1/3))
//from eq. 8.28
ratio=od/id                      //ratio=Ao/Ai
Rdo=0.21*10^-3                   //outside dirt factor
Rdi=0.35*10^-3                   //inside dirt factor
Udo=1/((1/ho)+Rdo+(ratio)*Rdi+(ratio)*(1/hi))

//SECOND TRIAL
//estimation of heat transfer coefficient
//Tube side (water)
np1=12               //
fa2=(%pi/4)*(id*10^-3)^2*np1   //m^2, flow area
v2=(wfr/1000)/(3600*fa2)      //m/s, velocity
Re2=(id*10^-3)*v2*rho2/mu2     //Reynold no.
//from fig . 8.11(a)
jht=83                         //colburn factor
//jh=(hi*di)/k*(cp*mu/k)^-1/3     
//assume,   (cp*mu/k)=x
hit=jht*(k2_/(id*10^-3))*(cp2*1000*mu2/k2)^(1/3)  //kcal/h m^2 C

//shell side
c2=(25.4-od)*10^-3            //m, clearance b/w 2 adjacent tubes
B2=0.1                        //m, baffel spacing
p2=0.0254                     //m,radius of 1 tube
Ds2=0.254                     //m, inside diameter of shell
//from eq. 8.32
As2=c2*B2*Ds2/p2              //m^2, flow area
Gs2=Cp/As2                    //kg/m^2 h, mass flow rate of shell fluid
do2=od/10                     //cm, outside diameter of shell
//from eq. 8.30
Dh2=4*((p2*100)^2-((%pi*(do2)^2)/4))/((%pi*do2))
Dh2_=Dh2*10^-2                //m, hydrolic diameter
Re2=(Dh2_*Gs2)/(3600*(mu1*10^-3))
//from fig 8.11(b)
jh2=48                       //colburn factor
ho2=jh2*(k1_/Dh2_)*((6)^(1/3))
//from eq. 8.28
ratio=od/id                   //ratio=Ao/Ai
Rdo2=0.21*10^-3               //outside dirt factor
Rdi2=0.35*10^-3               //inside dirt factor
Udo2=1/((1/ho2)+Rdo+(ratio)*Rdi+(ratio)*(1/hit))

//from eq. 8.10(a)
tauc=(T2-T3)/(T1-T3)         //Temprature ratio
R=(T1-T2)/(T2-T3)            //Temprature ratio
Ft=0.8                       //LMTD correction ftor
Areq=HD_/(Udo2*Ft*LMTD)      //area required
tubes=48                     //no. of tubes
lnt=4.5                      //length of 1 tube
Aavl=(%pi*od*10^-3)*tubes*lnt      //available area
excA=((Aavl-Areq)/Areq)*100         //% excess area

//Pressure drop calculation
//Tube side
//from eq. 8.33
Gt=wfr/(3600*fa2)          //kg/m^2 s, mass flow rate of tube fluid
n2=4                       //tube passes
fit=1                      //dimensionless viscosity ratio
g=9.8                      //gravitational constant
f=0.0037                   //friction factor
dpt=f*Gt^2*lnt*n2/(2*g*rho2*id*10^-3*fit)      //kg/m^2, tube side pressure drop

//eq.8.35
dpr=4*n2*v2^2*rho2/(2*g)            //kg/m^2, return tube pressure loss
dpr_=dpr*9.801                      //N/m^2
tpr=dpt+dpr                         //kg/m^2, total pressure drop
//shell side
fs=0.052                            //friction factor for shell
bf1=0.1                             //m, baffel spacing
Nb=lnt/bf1-1                        //no. of baffles
dps=fs*(Gs2/3600)^2*Ds*(Nb+1)/(2*g*rho1*Dh2_*fit)   //kg/m^2, shell side pressure drop
dps_=dps*9.81                       //N/m^2, shell side pressure drop
printf("Tube side Pressure drop is %f N/m^2 \n",dpr_)
printf("Shell side Pressure drop is %f N/m^2 ",dps_)

