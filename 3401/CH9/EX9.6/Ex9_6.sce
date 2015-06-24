clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
esp=11.7
esp0=8.85*10^-14 
J=10 //A/K^2-cm^2
Jst=5.98*10^-5//A/K^2-cm^2
Js=3.66*10^-11 //A/K^2-cm^2

//J=Jst*[exp(e*Va/k*T)-1]
//Va=(k*T/e)*log(J/Jst)
Va=(k*T)*log(J/Jst)
disp(Va,"forward bias voltage in V is= ")

Va=(k*T)*log(J/Js)
disp(Va,"forward bias voltage in V is= ")

