clear
// Variable declaration
R_i=0.3// The inside surface resistance in (m**2 K)/W
R_c=1/2.8// The thermal conductance of plastered surface in (m**2 K)/W
R_o=0.05// The outside surface resistance in (m**2 K)/W

// Calculation
R_t=R_i+R_c+R_o// The total thermal resistance in (m**2 K)/W
U=1/R_t// The overall transmittance in W/(m**2 K)
printf("\n The overall transmittance,U= %0.3f   W/(m**2 K)",U)
