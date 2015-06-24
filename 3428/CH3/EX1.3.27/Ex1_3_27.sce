//Section-1,Example-10,Page no.AC-276
//To calculate the amount of lime and soda required for the softening of 24000 litres of water for the given period of time.
clc;
A_1=1.85       //CaCO3(mg/L)
A_2=0.34         //CaSO4(mg/L)
A_3=0.42        //MgCO3(mg/L)
A_4=0.76           //MgCl2(mg/L)
A_5=0.90           //MgSO4(mg/L)
A_6=2.34           //NaCl(mg/L)
A_7=2.34            //SiO2(mg/L)
L_R=(74/100)*((A_1*(100/100))+(2*A_3*(100/84))+(A_4*(100/95))+(A_5*(100/120)))*((24000*365*100)/(10^6*88.3))
disp(L_R,'Lime requirement(kg)')
S_R=(106/100)*((A_2*(100/136))+(A_4*(100/95))+(A_5*(100/120)))*((24000*365*100)/(10^6*99.2))
disp(S_R,'Soda requirement(kg)')
