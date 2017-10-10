clear
// Variable declaration
v_e=8// The entering velocity of air in m/s
v_l=5.5// The leaving velocity of air in m/s
fl=20// Friction losses in %
m=1.2// Masss in kg

// Calculation
P_e=(m*v_e**2)/2// Velocity pressure entering expansion in Pa
P_l=(m*v_l**2)/2// Velocity pressure leaving expansion in Pa
FL=fl*10**-2*(P_e-P_l)// Friction losses in Pa
Sr=(1-(fl*10**-2))*(P_e-P_l)// Static regain in Pa
printf("\n The amount of Static regain=%2.1f Pa",Sr)

