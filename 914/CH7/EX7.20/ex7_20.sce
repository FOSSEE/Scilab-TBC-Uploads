clc;
warning("off");
printf("\n\n example7.20 - pg318");
// given
P=749/760;  //[atm] - pressure
T=21+273.15;  //[K] - temperature
poak=38*(1/62.4);  //[g/cm^3] - density of oak
pbrass=534/62.4;  //[g/cm^3] - density of brass
m_brass=6.7348;  //[g]
pair=0.001184;  //[g/cm^3] - density of air
// using the formula m_oak=m_brass*((1-(pair/pbrass))/(1-(pair/poak)))
m_oak=m_brass*((1-(pair/pbrass))/(1-(pair/poak)));
printf("\n\n m_oak=%fg",m_oak);
