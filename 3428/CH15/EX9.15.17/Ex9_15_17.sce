//Section-9,Example-1,Page no.-E.23
//To determine the range of voltmeter to display changes of pH  at given conditions.
clc;
E=0
R=8.314
T=298
F=96500
pH_1=1
E1_bar=E+(((R*T*log(10))/F)*(7-pH_1))
pH_7=14
E2_bar=E+(((R*T*log(10))/F)*(7-pH_7))
E_bar=E1_bar-E2_bar
disp(E_bar,'Required range of voltmeter(V)')
