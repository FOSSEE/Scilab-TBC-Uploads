clc
clear

//Input data
V1=0.35 //Volume of gas in m^3
P1=110 //Initial Pressure in kPa
T1=300 //Intial Temperature in K
P2=600 //Final Pressure in kPa,missing data
k=1.4 //Adiabatic constant
Cv=718 //Specific heat at constant volume in J/kg-K
R=287 //Specific Gas constant in J/kg-K

//Calculation
dQ=0 //Heat transfer in J, Since Adiabatic process
m=(P1*10^3*V1)/(R*T1) //Mass of air in kg 
p1=P2/P1 //Pressure ratio
T2=T1*p1^((k-1)/k) //Final temperature in K
dU=(m*Cv*(T2-T1))*10^-3 //Change in internal energy in kJ
dW=-dU //Workdone in kJ, Since dQ=0

//P-V Diagram
scf()
clf()
V1cc=V1*10^3 //Inlet volume in cc
V2cc=V1cc*(T2/T1)^(1/(k-1)) //Final volume in cc
V = V1cc:(V2cc-V1cc)/100:V2cc   //Representing volume on graph, adiabatic expansion
P = P2*V1cc^k./V^k //Representing pressure on graph
plot(V, P) //Plotting  
legend('P*V^k=C') //Defining curve
xtitle("PV Diagram", "V (cc)", "P (kPa)") //Titles of axes

//Output
printf('(A)Heat transfer is %3i J\n (B)Change in internal energy is %3.3f kJ\n (C)Workdone is %3.3f kJ\n',dQ,dU,dW)
