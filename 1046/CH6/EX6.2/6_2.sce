//Example 6.2
//Calculate the rate of boiling of water .
//Given
d=0.35                   //m, diameter of pan
p=1.013                  //bar, pressure
T1=115                   //C, bottom temp.
T2=100                   //C, boiling temp.
Te=T1-T2                 //C, excess temp.
//For Water
mu1=2.70*10^-4           //Ns/m^2, viscosity
cp1=4.22                 //kj/kg C, specific heat
rho1=958                 //kg/m63. density
Lv1=2257                 //kj/kg, enthalpy of vaporization 
s1=0.059                 //N/m , surface tension
Pr1=1.76                 //Prandtl no.
//For saturated steam
rho2=0.5955
//For the pan
Csf=0.013               //constant
n=1                     //exponent
g=9.8                   //m/s^2, gravitational constant
//from eq. 6.6  //heat flux
Qs1=mu1*Lv1*(g*(rho1-rho2)/s1)^(1/2)*(cp1*Te/(Csf*Lv1*(Pr1)^n))^3
Rate=Qs1/Lv1             //kg/m^2 s. rate of boiling
Ap=%pi/4*d^2            //m^2, pan area
Trate=Rate*Ap           //kg/s, Total rate of boiling
Trate_=Trate*3600.5     //kg/h. Total rate of boiling
printf("total rate of boiling of water is %f kg/h \n",Trate_)

//using Lienhard's eq.,   //critical heat flux
Qmax=0.149*Lv1*rho2*(s1*g*(rho1-rho2)/(rho2)^2)^(1/4)
//by Mostinski eq.
Pc=221.2                //critical pressure
Pr=p/Pc                 //reduced pressure
hb=0.00341*(Pc)^(2.3)*Te^(2.33)*Pr^(0.566)     //boiling heat transfer coefficient
hb_=hb/1000              //kW/m^2 C boiling heat transfer coefficient
Qs2=hb_*(Te)
printf("Qs2 compares reasonably well with the Qs1")
