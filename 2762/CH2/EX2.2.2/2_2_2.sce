//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.2-2
//Principles of Momentum Transfer and Overall Balances
//given data
//P(total pressure)=h(height of the column)*rho(density of fluid)*g(gravity force)+P(absolute pressure)
h1=10 ;//ht of oil layer in ft
rhooil=917;//density of oil in kg/m3
g=9.8;//gravity force in m/s2
Patmsi=1.01325*10^5;//atm pressure in si units
Patm=14.696;//lbf/in2
Ptot1=h1*(rhooil*62.43/1000)*1*(1/144)+Patm;//ft*(lbm/ft3)*(1/(in2/ft2));
Ptot1si=(h1*0.3048)*rhooil*g+Patmsi;//total pressure of oil in si units
h2=2;//ht in ft
rhowater=1000;//density of water in kg/m3
Ptot2=h2*(rhowater*62.43/1000)*1*(1/144)+Ptot1;//ft*(lbm/ft3)*(1/(in2/ft2))
Ptot2si=(h2*0.3048)*rhowater*g+Ptot1si;//total pressure of water in si units
Pgage=Ptot2-Patm
mprintf("the pressure on oil layer is %f psia",Ptot1)
mprintf("the pressure on oil layer is %f pa",Ptot1si)
mprintf("the pressure on bottom layer is %f psia",Ptot2)
mprintf("the pressure on oil layer is %f pa",Ptot2si)
mprintf("the gage pressure %f psia",Pgage)
//end
