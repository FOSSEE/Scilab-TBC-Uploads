//Example 6.4
//Calculate the physical properties of the liquid.

//Given
W1=200              //kg/h, rate of entering toluene
muv=10^-5           //kg/m s, viscosity of toluene vapour
mul=2.31*10^-4      //kg/m s, viscosity of  benzene
rhol=753            //kg/m^3, density of benzene
rhov=3.7            //kg/m^3, density of toluene vapour
Cpl=1968            //j/kg C, specific heat of benzene
kl=0.112            //W/m C, thermal conductivity of benzene
T1=160              //C tube wall temp.
T2=120              //C , saturated temp.
Te=T1-T2            //C, excess temp.
Lv=3.63*10^5        //j/kg, enthalpy of vaporization
s=1.66*10^-2        //N/m, surface tension
//Calculation of hc & hb
w=0.125             //m, mean step size
d=0.0211            //, internal diameter of tube
G=W1/(3600*%pi/4*(d^2))         //kg/m^2 s, mass flow rate
Re1=G*(1-w)*d/mul              //Reynold no. 
Prl=Cpl*mul/kl                 //Prandtl no.
//from eq. 6.23
x=(w/(1-w))^(0.9)*(rhol/rhov)^(0.5)*(muv/mul)^0.1  //let x=1/succepsibility
//from eq. 6.22               
F=2.35*(x+0.231)^0.736        //factor signifies 'liquid only reynold no.' to a two phase reynold no.
//from eq. 7.21
Re2=10^-4*Re1*F^1.25          //Reynold no.
//from eq. 6.18
S=(1+0.12*Re2^1.14)^-1        //boiling supression factor
//from eq. 6.15
hc=0.023*Re1^(0.8)*Prl^(0.4)*(kl/d)*F  //W/m^2 C, forced convection boiling part
//from eq. 6.16
mulv=(1/rhov)-(1/rhol)              //m^3/kg, kinetic viscosity of liquid vpaour
dpsat=Te*Lv/((T2+273)*mulv)         //N/m^2, change in saturated presssure 
//nucleate boiling part hb
hb=1.218*10^-3*(kl^0.79*Cpl^0.45*rhol^0.49*Te^0.24*dpsat^0.75*S/(s^0.5*mul^0.29*Lv^0.24*rhov^0.24))
h=hc+hb                            //W/m^2 C, total heat transfer coefficient

//calculation of required heat transfer area
a=5                              //%, persentage change in rate of vaporization
W2=W1*a/100                      //kg/h, rate of vaporization
W2_=W2/3600                      //kg/s
Q=W2_*Lv                         //W,heat load
A=Q/(h*Te)                       //m^2, area of heat transfer
l=A/(%pi*d)                      //m, required length of tube
//from table 6.2
Tl=0.393
printf("The total tube length is %f m",Tl)
