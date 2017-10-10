clc
R = 8.3143 // Gas constant in kJ/kg-mol-K
N1 = 0.5 // Mole no. of first system
N2 = 0.75 // Mole no. of second system
T1 = 200 // Initial temperature of first system in K
T2 = 300 // Initial temperature of second system in K
v = 0.02 // Total volume in m^3
printf("\n Example 11.6\n")
Tf = (T2*N2+T1*N1)/(N1+N2)
Uf_1 = (3/2)*(R*N1*Tf)*(10^-3)
Uf_2 = (3/2)*(R*N2*Tf)*(10^-3)
pf = (R*Tf*(N1+N2)*(10^-3))/v
Vf_1 = R*N1*(10^-3)*Tf/pf
Vf_2 = v-Vf_1
printf("\n Energy of first system is %f kJ,\n Energy of second system is %f kJ,\n Volume of first system is %f m^3,\n Volume of second system is %f m^3,\n Pressure is %d kN/m^2,\n Temperature is %d K.",Uf_1,Uf_2,Vf_1,Vf_2,pf,Tf)
//The answers vary due to round off error

