//example-8.4
//page no-242
//given
//melting point of A and B
MptA=1250   //degrees celcius
MptB=1900   //degrees celcius
//part(a)
//according to the conditions given in question phase diagram can be drawn as shown in fig 8.10 given in book
//part(b)
//at 1250 degrees celcius , it is a peritectic solution
//equation representing the equilibrium is given in the book which denotes forward reaction as cooling and backward as heating
//part (c)
//we are just considering a tie line just above the peritectic line at temp 1251 degrees celcius
//at this point
Cs1=80
Cl1=30 
C01=75
//point below peritectic line has temp as 1249 degrees celcius
Cs2=80
Cl2=50 
C02=75
//weight fraction of the phase present in the material of overall composition 75% B at 1251 degrees celcius and 75%  B at 1249 degrees 
f_alpha1=(Cs1-C01)/(Cs1-Cl1)*100   //%
f_beta1=(C01-Cl1)/(Cs1-Cl1)*100   //%
f_alpha2=(Cs2-C02)/(Cs2-Cl2)*100   //%
f_beta2=(C02-Cl2)/(Cs2-Cl2)*100  //%
//part (d)
// 75% B at room temp
Cs3=90
Cl3=30 
C03=75
f_alpha3=(Cs3-C03)/(Cs3-Cl3)*100   //%
f_beta3=(C03-Cl3)/(Cs3-Cl3)*100   //%
//the microstructure is also shown in book at page no 243
printf ("weight fraction of the phase present in the material of overall composition 75 percent B at 1251 degrees celcius and 75percent  B at 1249 degrees are %d %d %f %f  and at 75 percent concentration of B at room temp is %d %d",f_alpha1,f_beta1,f_alpha2,f_beta2,f_alpha3,f_beta3)
