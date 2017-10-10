clear
clc
//Example 9.6 LAMINAR/TURBULENT BOUNDARY LAYER ON FLAT PLATE
Uo=30; //[m/s]
L=3; //[m]
v=1.51*10^-5; //viscosity [m^2/s]
Re=Uo*L/v //Reynolds number

//Average shear-stress coefficient
Cf=(0.523/(log(0.06*Re))^2)-(1520/Re) 
printf("\nAverage shear-stress coefficient, Cf, for the plate = %.5f.\n\n",Cf)

//Total shear force
B=1; //[m]
rho=1.2; //[kg/m^3]
Fs=Cf*B*L*rho*(Uo^2/2) //[N]
printf("\nTotal shear force on one side of plate = %.2f N.\n\n",Fs)

Re_tr=5*10^5;
xtr=Re_tr*v/Uo //transition point [m]
//Laminar average shear-stress coefficient
Cfl=1.33/Re_tr^(1/2) 

//Laminar shear force
Fsl=(Cfl*B*xtr*rho*Uo^2)/2 //[N]
printf("\nShear force due to laminar part = %.3f N.\n\n",Fsl)

//Turbulent shear force
Fst=Fs-Fsl //[N]
printf("\nShear force due to turbulent part = %.2f N.\n",Fst)