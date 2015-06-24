clc
clear

//Input data
m=0.75 //Mass of air in kg 
T1=800 //Intial Temperature in K
P1=400 //Initial Pressure in kPa
P2=150 //Final Pressure in kPa
k=1.4 //Adiabatic constant
R=0.287 //Specific Gas constant in J/kg-K

//Calculation
p1=P2/P1 //pressure ratio of process
T2=T1*p1^((k-1)/k) //Final temperature in K
W=((m*R*(T1-T2))/(k-1)) //Workdone in kJ

//P-V Diagram
scf()
clf()
V1=(((m*R*T1)/P1)^(1/k))*10^3 //Inlet volume in cc
V2=(((m*R*T2)/P2)^(1/k))*10^3 //Final volume in cc
V = V1:(V2-V1)/100:V2   //Representing volume on graph, adiabatic expansion
P = P1*V1^k./V^k //Representing pressure on graph
plot(V, P) //Plotting  
legend('P*V^k=C') //Defining curve
xtitle("PV Diagram", "V (cc)", "P (kPa)") //Titles of axes

//Output
printf('Workdone is %3.2f kJ',W)
