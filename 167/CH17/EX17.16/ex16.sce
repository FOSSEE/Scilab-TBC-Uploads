//ques16
//Steam Flow through a Converging–Diverging Nozzle
clear
clc
P01=2;//inlet stagnation pressure in MPa
Pt=0.546*P01;//throat pressure in MPa
//at inlet
P1=2;//inlet pressure in MPa
T1=400;//Inlet Temp in C
T01=T1;//stagnation temp in K
//from tables
h1=3248.4;//enthalpy in kJ/kg
h01=h1;//stagnation enthalpy in kJ/kg
s1=7.1292;//entropy in kJ/kg.K
st=s1;//stagnation in kJ/kg.K
s2s=s1;//entropy at state 2s n kJ/kg.K
//Also, at the throat
Pt=1.09;//pressure in MPa
st=7.1292;//entropy in kJ/kg.K
//from tables
ht=3076.8;//enthalpy in kJ/kg
vt=0.24196;//m^3/kg
//now throat velocity is determined as
Vt=sqrt(2*(h01-ht)*1000);//throat velocity
//The flow area at the throat is determined from the mass flow rate relation
ms=2.5;//mass flow rate in kg/s
At=ms*vt/Vt;//area in m^2
printf('(a) Flow area at throat = %.2f cm^2 \n',At*10000);
//At state 2s,
P2s=300;//presure in kPa
P2=P2s;//kPa
//from table 
h2s=2783.6;//enthalpy at state 2s in kJ/kg
//from the enthalpy of the steam at the actual exit state is (see Chap. 7) formulae
n=0.93;
h2=h01-n*(h01-h2s);//enthalpy at state 2 in kJ/kg
//now from table
v2=0.67723;//m^3/kg
s2=7.2019;//entropy in kJ/kg.K
// the exit velocity and the exit area
V2=sqrt(2*(h01-h2)*1000);//Exit velocity in m^2
A2=(ms*v2)/V2;
printf('     Exit area = %.2f cm^2 \n',A2*10000);
//(b)
//c=(dP/d(1/v))^(1/2)
//The velocity of sound at the throat is determined by evaluating the specific volume at St = 7.1292 kJ/kg · K and at pressures of 1.115 and 1.065 MPa
Pa=1115;//kPa
Pb=1065;//kPa
va=0.23776;//m^3/kg
vb=0.24633;//m^3/kg
c=sqrt((Pa-Pb)/(1/va-1/vb)*1000);//velocity of sound at throat
V=585.8;//velocity in m/s
Ma=V/c;
printf(' (b) Mach number at the throat = %.3f \n',Ma);
//The velocity of sound and the Mach number at the nozzle exit are determined by evaluating the specific volume at St= 7.2019 kJ/kg · K and at pressures of 325 and 275 kPa
Pa=325;//kPa
Pb=275;//kPa
va=0.63596;//m^3/kg
vb=0.72245;//m^3/kg
c=sqrt((Pa-Pb)/(1/va-1/vb)*1000);
V=929.8;//Velocity
Ma=V/c;
printf('     Mach number at nozel exit = %.3f ',Ma);
