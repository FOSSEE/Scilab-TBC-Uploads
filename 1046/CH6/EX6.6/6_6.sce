//Example 6.6
//Calculate the rate of condensation  of TCE
//(a)on a single horizontal tube 
//(b) in a condenser 
//Given
//data fot TCE
T1=87.4                         //C, normal boiling point
T2=25                           //C, surface temp.
Lv=320.8                        //kj/kg, heat of vaporization
cp=1.105                        //kj/kg C, specific heat
mu=0.45*10^-3                   //P. liquid viscosity
k=0.1064                        //W/m C, thermal conductivity
rhol=1375                       //kg/m^3, liquid density
rhov=4.44                       //kg/m^3, density of vapour
Tm=(T1+T2)/2                    //C, mean film temp.
d=0.0254                        //m, outside diameter of tube
l=0.7                           //m, length
g=9.8                           //m/s^2, gravitational constant
//Calculation
//(a) from eq. 6.34
Lv1=Lv+0.68*cp*(T1-T2)
h=0.728*(g*Lv1*10^3*rhol*(rhol-rhov)*k^3/(mu*d*(T1-T2)))^(1/4)
A=%pi*d*l                       //m^2, area of tube
Q=h*A*(T1-T2)                   //W, rate of heat transfer
m=(Q/Lv1)/1000                  //kg/s rate of condensation
printf("Rate of condensation is %f kg/h \n",m*3600)

//(b)   from eq. 6.35
N=6                             //No. of tubes in vertical tire
h1=0.728*(g*Lv1*10^3*rhol*(rhol-rhov)*k^3/(N*mu*d*(T1-T2)))^(1/4)
TN=36                           //total no. of tubes
TA=TN*%pi*d*l                    //m^2, total area
Q1=h1*TA*(T1-T2)                   //W, rate of heat transfer
m1=(Q1/Lv1)/1000                  //kg/s rate of condensation
printf("Rate of condensation is %f kg/h \n \n",m1*3600)
//from chail's corelation
h2=(1+0.2*cp*(T1-T2)*(N-1)/(Lv1))
printf("thus there will be increase in the calculated rate of heat transfer and in rate of condensation as %f percent",18.7)
