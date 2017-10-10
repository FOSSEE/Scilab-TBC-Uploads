clc
m1=30 //mass of steel
m2=150 //mass of oil
Cp1=0.46 //steel
Cp2=2.5 //oil
T1=700 //steel
T2=300 //oil
T=((m1*Cp1*T1)+(m2*Cp2*T2))/((m1*Cp1)+(m2*Cp2))
mprintf("T=%fK\n",T)//ans vary due to roundoff error
deltaSsteel=integrate('m1*Cp1/T','T',T1,T)
mprintf("deltaSsteel=%fkJ/K\n",deltaSsteel)//ans vary due to roundoff error
deltaSoil=integrate('m2*Cp2/T','T',T2,T)
mprintf("deltaSoil=%fkJ/K\n",deltaSoil)//ans vary due to roundoff error
deltaSuni=deltaSsteel+deltaSoil
mprintf("deltaSuni=%fkJ/k",deltaSuni)//ans vary due to roundoff error
