
//Example 8.1
//page no. 303
//Given
//for  Benzene
Mb=1000              //Kg, mass of benzene
T1=75                //C initial temp. of benzene
T2=50               //C final temp. of benzene
Cp1=1.88             //Kj/Kg C. specific heat of benzene
mu1=0.37             //cP. viscosity of benzene
rho1=860             //kg/m^3, density
k1=0.154             //W/m K. thermal conductivity

//for water
Tav=35               //C av, temp.
Cp2=4.187             //specific heat
mu2=0.8              //cP. viscosity
k2=0.623             //W/m K. thermal conductivity
T3=30                //C. initial temp.
T4=40                //C final temp.
//Calculation
//(a)
HD=Mb*Cp1*(T1-T2)   //Kj/h, heat duty
WR=HD/(Cp2*(T4-T3))  //kg/h Water rate
printf("the heat duty of the exchanger is %f kj/h",HD)
printf("the water flow rate is %f kg/h",WR)

//(b)
//tube side (water) calculations
//given
di1=21            //mm, inner diameter of inner tube 
do1=25.4          //mm, outer dia. of inner tube
t=2.2            //mm/ wall thickness
kw=74.5          //W/m K. thermal conductivity of the wall
di2=41           //mm, inner diameter of outer pipe
do2=48           //mm, outer diameter of outer pipe

FA1=(%pi/4)*(di1*10^-3)^2    //m^2, flow area
FR1=WR/1000
v1=FR1/(FA1*3600)                      //m/s, velocity
Re1=(di1*10^-3)*v1*1000/(mu2*10^-3)  //Reynold no.
Pr1=Cp2*1000*(mu2*10^-3)/k2          //Prandtl no.
//using dittus boelter eq.
Nu1=0.023*(Re1)^(0.8)*(Pr1)^(0.3)    //nusslet no.
h1=Nu1*k2/(di1*10^-3)                //W/m^2 C, heat transfer coefficient

//Outer side (benzene) calculation
FA2=(%pi/4)*(di2*10^-3)^2-(%pi/4)*(do1*10^-3)^2   //flow area
wp=%pi*(di2*10^-3+do1*10^-3)                      //wettwd perimeter
dh=4*FA2/wp                                       //hydrolic diameter
bfr=Mb/rho1                                       //m^3/h benzene flow rate
v2=bfr/(FA2*3600)                                 //m/s, velocity
Re2=dh*v2*rho1/(mu1*10^-3)                        //Reynold no
Pr2=Cp1*10^3*(mu1*10^-3)/k1                       //Prandtl no.
Nu2=0.023*(Re2)^(0.8)*(Pr2)^(0.4)                 //nusslet no.
h2=Nu2*k1/(dh)                              //W/m^2 C, heat transfer coefficient
printf("heat transfer coefficient based on inside area  is %f W/m^2 C \n",h1)
printf("heat transfer coefficient based on outside area  is %f W/m^2 C \n",h2)

//Calculation of clean  overall heat transfer coefficient, outside area basis
//from eq. 8.28
//given
l=1     //assume , length
Ao=%pi*do1*10^-3*l
Ai=%pi*di1*10^-3*l
Am=(do1*10^-3-di1*10^-3)*%pi*l/(log(do1*10^-3/(di1*10^-3)))

//overall heat transfer coefficient
Uo=1/((1/h2)+(Ao/Am)*((do1*10^-3-di1*10^-3)/(2*kw))+(Ao/Ai)*(1/h1))
Ui=Uo*Ao/Ai

//Calculation of LMTD
dt1=T1-T4
dt2=T2-T3
LMTD=(dt1-dt2)/log(dt1/dt2)    //log mean temp. difference correction factor
Q=HD*1000/3600                 //W, heat required
Ao_=Q/(Uo*LMTD)                //m^@, required area
len=Ao_/(%pi*do1*10^(-3))        //m, tube length necessary

//(c)
la=15                          //m ,actual length
Aht=(%pi*do1*10^(-3)*la)
Udo=Q/(Aht*LMTD)              //W/m^2 C, overall heat transfer coefficient with dirt factor
//from eq. 8.2
Rdo=(1/Udo)-(1/Uo)           //m^2 C/W
printf("overall heat transfer coefficient outside area basis is %f W/m^2 C \n",Uo)
printf("overall heat transfer coefficient inside area basis is %f W/m^2 C \n",Ui)
printf("The fouling factor is %f m^2 C/W",Rdo)

