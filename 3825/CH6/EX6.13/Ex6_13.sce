clc
O2=8 //moles of oxygen in combustion equation of C5H12 
N2=8*3.7619 //moles of nitrogen in combustion equation of C5H12 
C5H12=1 //moles of C5H12 in combustion equation of C5H12 
mprintf("Air-fuel ratio=%fmol air/mol fuel\n",(O2+N2)/C5H12)//air-fuel ratio for combustion of C5H12
molmass1=72 //molar mass of C5H12
molmass2=28.97 //molar mass of air
mprintf("Air-fuel ratio=%fkg air/kg fuel\n",((O2+N2)*molmass2)/(molmass1*C5H12))//ans vary due to roundoff error
a=5//moles of C02(product side) in combustion equation of C5H12 with 150 percent theoretical air
b=6//moles of H2O(product side) in combustion equation of C5H12 with 150 percent theoretical air
c=45.14//moles of N2(product side) in combustion equation of C5H12 with 150 percent theoretical air
d=4//moles of 02(product side) in combustion equation of C5H12 with 150 percent theoretical air
Totalmol=a+b+c+d
CO2=a/Totalmol
mprintf("CO2=%f\n",CO2)//ans vary due to roundoff error
H2O=b/Totalmol
mprintf("H2O=%f\n",H2O)//ans vary due to roundoff error
N2=c/Totalmol
mprintf("N2=%f\n",N2)//ans vary due to roundoff error
O2=d/Totalmol
mprintf("O2=%f",O2)//ans vary due to roundoff error




