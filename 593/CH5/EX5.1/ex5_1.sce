clear;
//clc();

// Example 5.1
// Page: 89
printf("Example-5.1  Page no.-89\n\n");

//***Data***//
T=212;// [F]

//**********//
//From the steam table, we have 
delta_h=970.3;//[Btu/lbm]
delta_v=26.78;//[ft^(3)/lbm] and

// changing the units
delta_h1=delta_h*778;//[ft*lbf/lbm]
delta_v1=delta_v*144;//[ft*in^(2)/lbm]
T=671.7;//[R]

// We have dP/dT = delta_h/(T*delta_v)
//Thus
dP_by_dT=delta_h1/(T*delta_v1);//[psi/R]

printf("The value of dP/dT is %f psi/R",dP_by_dT);
//Using the nearest adjacent steam table entries for vapour pressure, wee have 
//dP_by_dT = delta_P_by_delta_T=(15.291-14.125)/(214-210)=0.2915 psi/R
