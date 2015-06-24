clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
ni=9.65*10^9//cm^-3
nno=10^14//cm^-3
taun=2*10^-6//sec
taup=2*10^-6//sec

pno=ni^2/nno
disp(pno,"before illumination pno in cm^-3 is")
GL=(10^13)/(1*10^-6)
pn=pno+taup*GL
disp(pn,"after illumination deltapn in cm^-3 is")
