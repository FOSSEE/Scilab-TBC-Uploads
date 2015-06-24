clear;
//clc();

// Example 6.7
// Page: 117
printf("Example-6.7  Page no.-117\n\n");

//***Data***//
x_sulph = 0.6;
x_water = 0.4;
Temp = 200;//[F]
// In the given figure 6.8 in the book, drawing the tangent to the 200F curve at 60 wt% H2SO4, we find that it intersects the 0%(pure water) axis at      25 Btu/lbm, and the 100% H2SO4 axis at -100Btu/lbm. i.e.
h_water_per_pound = 25;//[Btu/lbm]
h_sulph_per_pound = -100;//[Btu/lbm]
// also molecular weight of water and sulphuric acid are
M_water = 18;//[lbm/lbmol]
M_sulph = 98;//[lbm/lbmol]
// Using equation 6.20 given in the book we have
h_water = h_water_per_pound*M_water;//[Btu/lbmol]
h_sulph = h_sulph_per_pound*M_sulph;//[Btu/lbmol]
printf("Partial molar enthalpy of water in the mixture is  %f Btu/lbmol\n",h_water);
printf(" Partial molar enthalpy of H2SO4 in the mixture is %f Btu/lbmol",h_sulph);