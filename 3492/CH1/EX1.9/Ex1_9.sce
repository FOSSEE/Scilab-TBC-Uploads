clc
//Chapter1
//Ex_1.9
//Given
k=1.38*10^-23 //J/K
T=300 //kelvin
Ev=0.75 //eV/atom
Ev=Ev*1.6*10^-19 //in J
T1=660//degree celcius
T1=T1+273 //in kelvin
//at room temperature
//let nv/N=nv_N for convenience
nv_N=exp(-Ev/(k*T))
disp(nv_N,"Fractional concentration of vacancies in the aluminium crystal at room temperature is")
//at melting temperature
//let nv/N=nv_N for convenience
nv_N=exp(-Ev/(k*T1))
disp(nv_N,"Fractional concentration of vacancies in the aluminium crystal at melting temperature is")
