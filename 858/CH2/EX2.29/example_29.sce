clc
clear 
printf("example 2.29 page number 82\n\n")

//to find the total vapor pressure and molar compositions

m_benzene = 55   //in kg
m_toluene = 28   //in kg
m_xylene = 17    // in kg

mole_benzene = m_benzene/78;
mole_toluene = m_toluene/92;
mole_xylene = m_xylene/106;

mole_total = mole_benzene+mole_toluene+mole_xylene;
x_benzene = mole_benzene/mole_total;
x_toluene = mole_toluene/mole_total;
x_xylene = mole_xylene/mole_total;

P = x_benzene*178.6+x_toluene*74.6+x_xylene*28;
printf("total pressure = %f kPa\n",P)

benzene = (x_benzene*178.6*100)/P;
toluene = (x_toluene*74.6*100)/P;
xylene = (x_xylene*28*100)/P;

printf("xylene = %f \n toluene = %f \n benzene = %f",xylene,toluene,benzene)
