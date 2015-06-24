//Example 6.3
//Calculate the rate of boiling.
//Given
A=12.5673
B=4234.6
pv=1.813
T1=200                 //C, tube wall temp.
//For methanol
Tc=512.6               //K, critical temp.
w=0.556                //acentric factor
Zra=0.29056-0.08775*w
R=0.08314             //m^3bar/gmol K, universal gas constant
Pc=80.9               //bar, critical temp.
Mw=32                 //g, molecular wt

//Calculation
//Estimation of liquid and vapour properties 
//from antoine eq.
T=B/(A-log(pv))       //K, boiling point
Te=(T1+273)-T         //K, excess temp.
Tm=((T1+273)+T)/2     //K, mean temp.

//Liquid properties
//(a)
Tr=T/Tc              //K, reduced temp.
//from Rackett technique
Vm=R*Tc*(Zra)^(1+(1-Tr)^(2/7))/Pc      //m^3/kg mol, molar volume
rhol=Mw/Vm                             //kg/m^3, density of satorated liquid density
//(b)
//from Missenard technique
T2=348               //K,given data temp.
T3=373               //K,given data temp.
Cp2=107.5            //j/g mol K specific heat at T2
Cp3=119.4            //j/g mol K specific heat at T3
//By linear interpolation at T=353.7 K
Cp=Cp2+(Cp3-Cp2)*((T-T2)/(T3-T2))    //kj/kg mol C, specific heat at T=353.7 K
Cp_=Cp*0.03125                       //kj/kg C
//(c)Surface tension at given temp.(K)
T4=313
St4=20.96
T5=333
St5=19.4
//By linear interpolation at T=353.7 K
S=17.8                               //dyne/cm, surface temp.
//(d) liquid viscosity
T6=298               
MUt6=0.55                           //cP, liquid viscosity at temp=298
MU=((MUt6)^-0.2661+((T-T6)/233))^(-1/0.2661)       //cP
//(e)Prandtl no. a,b,c are constant
a=0.3225
b=-4.785*10^-4
c=1.168*10^-7
kl=a+b*T+c*T^2                     //W/m C, thermal conductivity
Prl=Cp_*1000*MU*10^-3/kl           //Prandtl no.
//(f)heat of vaporization at 337.5 K
Lv=1100                            //kj/kg, enthalpy of vaporization

//Properties of methanol vapour at Tm
//(a)
Vm1=R*Tm/pv                      //m^3/kg mol, molar volume
rhov=Mw/Vm1                      //kg/m^3, density of vapour
//(b) a1,b1,c1,d1 are costants
a1=-7.797*10^-3
b1=4.167*10^-5
c1=1.214*10^-7
d1=-5.184*10^-11
//thermal conductivity of vapour
kv=a1+b1*Tm+c1*Tm^2+d1*Tm^3    //W/m C
//(c)heat capacity of vapour,  a2,b2,c2,d2 are costants
a2=21.15
b2=7.092*10^-2
c2=2.589*10^-5
d2=-2.852*10^-8
//heat capacity of vapour,      in kj/kh mol K
Cpv=a2+b2*Tm+c2*Tm^2+d2*Tm^3

//(d)viscosity of vapour
T7=67
MUt7=112
T8=127
MUt8=132
//from linear inter polation at Tm
MUv=1.364*10^-5              //kg/m s

//from Rohsenow's eq.
Csf=0.027                   //constant
n=1.7                       //exponent value
//from eq. 6.6
g=9.8                       //m/s^2, gravitational constant
//heat flux   //kW/m^2
Q=MU*10^-3*Lv*(g*(rhol-rhov)/S*10^-3)^(1/2)*(Cp_*Te/(Csf*Lv*(Prl)^n))^3
//from eq. 6.11
//from eq 6.11,  critical heat flux
Qmax=0.131*Lv*(rhov)^(1/2)*(S*10^-3*g*(rhol-rhov))^(1/4)
//dimensionless radius r_
r=0.016
r_=r*(g*(rhol-rhov)/(S*10^-3))^(1/2)
//peak heat flux
Qmax1=Qmax*(0.89+2.27*exp(-3.44*sqrt(r_)))
//from eq. 6.12
//heat transfer coefficient hb
d=0.032                        //m, tube diameter
hb=0.62*((kv^3)*rhov*(rhol-rhov)*g*(Lv*10^3+0.4*Cpv*Te)/(d*MUv*Te))^(1/4)
Qb=hb*Te                      //kw/m^2, heat flux
BR=Qb*10^-3/Lv                //kg/m^2s, boilng rate 
printf("The boilins rate is %f kg/m^2 h",BR*3600)
