clear;
//clc();

// Example 12.4
// Page: 323
printf("Example-12.4  Page no.-323\n\n");

//***Data***//
n_water_0 = 0.833;//[mol]
n_ethylene_0 = 1;//[mol]
n_ethanol_0 = 0;//[mol]
n_T_0 = (n_water_0+n_ethylene_0+n_ethanol_0);//[mol]

// In general, we must have 
// K = [a_C2H5OH]/([a_C2H4]*[a_H2O])

// Here we will assume that we have an ideal solution of the ideal gases for which in equation 12.18 (page 320), we have 
// v_i*Y_i = phi = 1.00 , and that for each reactant or product f_i_0 = 1 bar so that
// [a_C2H5OH]/([a_C2H4]*[a_H2O]) = K = [x_C2H5OH*P/(1 bar)]/([x_C2H4*P/(1 bar)]*[x_H2O*P/(1 bar)])
// So 

// K = [x_C2H5OH]/([x_C2H4]*[x_H2O])*(1 bar)/P
// Here the stoichiometric coefficients are -1,-1 and +1, so that summation(v_i) = -1 and

//  [(0+e)/(1.833-e)]/([(1-e)/(1.833-e)]*[(0.833-e)/(1.833-e)]) = K*P/(1 bar)
printf("''The mass action law '' statement for the given reaction is\n\n [(0+e)/(1.833-e)]/([(1-e)/(1.833-e)]*[(0.833-e)/(1.833-e)]) = K*P/(1 bar)")

