clear;
//clc();

// Example 6.9
// Page: 119
printf("Example-6.9  Page no.-119\n\n");

//***Data***//
m_sulph = 0.6;
m_water = 0.4;
m = m_sulph+m_water;
Temp = 200;//[F]
// Here at 200F we can read the solution enthalpy h_solution and pure H2SO4 enthalpy h_sulph such that
h_solution = -50;//[Btu/lbm]
h_sulph = 53;//[Btu/lbm]
// By energy balance, using h_0_water from example 6.7 in the book i.e.
h_0_water = 168;//[Btu/lbm]
// We find 
delta_Q = m*h_solution-(m_sulph*h_sulph+m_water*h_0_water);//[Btu]
printf("The amount of heat added or removed is %f Btu\n\n",delta_Q);
// We must remove the given amount of to hold the temperature constant.
printf("However the book has some mistake in calculation and reporting -172 Btu")