//Variable declaration
rho1=1.2*10**-8
p1=0.4
rho2=0.12*10**-8
p2=0.5
rho3=1.5*10**-8
//Calculations
R=(rho1*p1)+(rho2*p2)
R_c=R+rho3

//Results
printf('Increase in resistivity in copper =%0.3f *10**-8 ohm m  \n ',(R*10**8))
printf('Total resistivity of copper alloy =%0.3f *10**-8 ohm m  \n ',(R_c*10**8))
printf('The resistivity of alloy at 3K =%0.3f  *10**-8 ohm m \n ',(R*10**8))