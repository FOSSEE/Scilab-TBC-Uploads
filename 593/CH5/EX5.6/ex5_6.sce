clear;
//clc();

// Example 5.6
// Page: 96
printf("Example-5.6  Page no.-96\n\n");

//***Data***//
T_2=-22;//[C]
// converting temperature in farenheit
T_2F=T_2*9/5+32;//[F]

//Expressing T_2 in Rankine
T_2R=460+T_2F;//[R]

//******//

//delta_h = delta_h(fusion)
delta_h=143.35*778;//[ft*lbf/lbm]

//delta_v = v_water-v_ice
delta_v=0.01602-0.01747;//[ft^(3)/lbm]

// changing the unit 
delta_v1=delta_v*144;//[ft*in/lbm]

//and
T_1=460+32;//[R]
dP_by_dT=delta_h/(T_1*delta_v1);//[psi/R] at 32F
delta_T=T_2R-T_1;

//This gives the rigorously correct slope of the liquid-solid curve at 32F on a P-T diagram.
//Here we use P instead of p  because neither phase is a gas, so this is not a vapour pressure. 
//If we further assume that the solid-liquid curve is a straight line, which is equivalent to assuming that delta_h/(T*deta_v)is a constant over the region of interest, then we can estimate the pressure at -22C = -7.6F by
// delta_P = integrate(dP_by_dT)*dT = (dP_by_dT)*delta_T
//So

delta_P=(dP_by_dT)*delta_T;//[psi]

// From this we can estimate the final pressure as
delta_P=delta_P+0.09;//[psi]

printf("Freezing preesure of water at given temperature is %f psi",delta_P);
// In this case, the experimental pressure is well known, because this temperature corresponds to the tripple point between liquid and water, 
// ice I(the common variety), and ice III, a variety that does not exist at pressure below about 30000 psia (see figure 1.10 in the book). 
// The measured value is 30000 psia, which shows that our assumption of a straight line on a P-T plot (delta_h/(T*delta_v)=constant) is only approximately correct.

