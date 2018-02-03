clear
//
//

//Initilization of Variables

E=200*10**3 //N/mm**2 //Modulus of elasticity
sigma=330 //N/mm**2 //Stress
a=1*7500**-1 //Rankine's constant
A=5205 //mm**2 //area of column
I_xx=59.431*10**6 //mm**4 //M.I at x-x axis
I_yy=8.575*10**6 //mm**24//M.I at y-y axis

//Calculations

//Total M.I
I=I_xx+I_yy //mm**4

//Area of compound Section 
A2=2*A //mm**2

k=(I*A2**-1)**0.5 //mm

//Equating Euler's Load to Rankine's Load we get
//%pi**2*E*I*(L**2)**-1=sigma*A*(1+a*(L*k)**2)**-1
//After Substitt=uting values and further simplifying we get
L=(39076198*(1-0.7975432)**-1)**0.5*10**-3 //m

//Result
printf("\n Length of column for which Rankines formula and Eulers Formula give the same result is %0.2f  m",L)
