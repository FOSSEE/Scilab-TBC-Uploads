clear;
//clc();

// Example 2.2
// Page: 28
printf("Example-2.2  Page no.-28\n\n");

//***Data***//
T_in = 600;//[F] Input steam temperature
P_in = 200;//[psia] Input steam pressure
P_exit = 50;//[psia]

// Because this is a steady-state, steady-flow process, we use 
// (work per pound) = W/m = -( h_in - h_out )

// From the steam table we can read the the inlet enthalpy and entropy as 
h_in = 1322.1;//[Btu/lbm]
s_in = 1.6767;//[Btu/(lb*R)]

// Now, we need the value of h_out

// For a reversible adiabatic steady-state, steady-flow process, we have
// sum(s*m_in_minus_out) = ( s_in - s_out ) = 0

// Which indicates that inlet and outlet entropies are same
// We can find the outlet temperature by finding the value of the temperature in the steam table
// For which the inlet entropy at 50 psia is the same as the inlet entropy, 1.6767 Btu/(lb*R). 
// By linear interpolation in the table we find 
T_in = 307.1;//[R]

// and by the linear interpolation in the same table we find that
h_out = 1188.1;//[Btu/lb]

// Thus, we find 
W_per_pound = -(h_in - h_out);//[Btu/lb]

printf(" The work output of the turbine of steam is %0.1f Btu/lb",-W_per_pound);
