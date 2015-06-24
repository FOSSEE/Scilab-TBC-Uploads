clc

Na=10**17 //cm**-3
T=300 //K
k=8.617*10^-5 //eV/K
E=10 //V/cm^2
e=1.6*10**-19 //C


//sigma=e*un*n0=e*un*(Nd-Na)
 //if 
Nd=2*10**17 //cm**-3
sigma=8.16//ohm/cm
un=sigma/(e*(Nd-Na))
disp(un,"un in cm^2/Vs is=")

//if
Nd=5*10**17 //cm^-3
sigma=20.8//ohm/cm
un=sigma/(e*(Nd-Na))
disp(un,"un in cm^2/Vs is=")

//if
Nd=3.5*10**17 //cm^-3
sigma=16//ohm/cm
un=sigma/(e*(Nd-Na))
disp(un,"un in cm^2/Vs is=")
