//Example 6.7
//What fraction of vapour woll condense .

//Given
Gv=20                  //kg/m^2 s, mass flow rate of benzene
di=0.016               //m, tube diameter
muv=8.9*(10^-6)        //P, viscosity
Lv=391                 //kj/kg., enthalpy of vaporization
cpl=1.94               //kj/kg C, specific heat
Tv=80                  //C, normal boiling point of benzene
Tw=55                  //C, wall temp.
g=9.8                  //m/s^2, gravitational constant
rhol=815               //kg/m^3, density of benzene
rhov=2.7               //kg/m^3, density of benzene vapour
kl=0.13                //W/m C, thermal conductivity
mu=3.81*10^-4          //P, viscosity of benzene
l=0.5                  //m, length  of tube

//calculation
Rev=di*Gv/muv          //Reynold no. of vapour
//from eq. 6.38
Lv1=Lv+(3/8)*cpl*(Tv-Tw)
//heat transfer corfficient , h
h=0.555*(g*rhol*(rhol-rhov)*kl^3*Lv1*10^3/(di*mu*(Tv-Tw)))^(1/4)
Aavl=%pi*di*l          //m^2, available area
Q=Aavl*h*(Tv-Tw)       //W, rate of heat transfer
m=Q/(Lv1*10^3)         //kg/s, rate of condensation of benzene
Ratei=Gv*(%pi/4)*di^2   //kg/s rate of input of benzene vapour
n=m/Ratei              
printf("fraction of input vapour condensed is %f",n*100)
