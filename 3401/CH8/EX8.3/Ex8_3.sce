clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Jp=5 //A/cm^2
Jn=20 //A/cm^2
Va=0.65 //V
ni=1.5*10**10 //cm^-3
Dn=25 //cm^2/s
Dp=10 //cm^2/s
taup0=5*10^-7 //s
taun0=5*10^-7 //s

//Jn=(e*Dn*np0/Ln)*[exp(e*Va/k*T)-1]==e*sqrt(Dn/taun0)*(ni^2/Na)*[exp(e*Va/k*T)-1]

Na=e*sqrt(Dn/taun0)*(ni^2/Jn)*[(exp(Va/(k*T)))-1]
disp(Na,"Na elctron diffusion current density in cm^-3 is= ")

//Jp=(e*Dp*pn0/Lp)*[exp(e*Va/k*T)-1]==e*sqrt(Dp/taup0)*(ni^2/Nd)

Nd=e*sqrt(Dp/taup0)*(ni^2/Jp)*[(exp(Va/(k*T)))-1]
disp(Nd,"Nd hole diffusion current density in cm^-3 is= ")
