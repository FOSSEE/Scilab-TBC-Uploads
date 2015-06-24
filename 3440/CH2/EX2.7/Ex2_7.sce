clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
m0=0.91*10^-30//kg
ni=2.25*10^6//cm^-3
nn0=10^16//cm^-3
taun=2*10^-9//sec
taup=2*10^-9//sec

pn0=ni^2/nn0
disp(pn0,"before illumination pn0 in cm^-3 is")
GL=(10^13)/(1*10^-6)
nn=nn0+taun*GL
disp(nn,"after illumination nn in cm^-3 is")       //textbook ans is wrong
pn=pn0+taup*GL
disp(pn,"after illumination pn in cm^-3 is")


