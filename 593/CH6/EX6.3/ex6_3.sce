clear;
//clc();

// Example 6.3
// Page: 109
printf("Example-6.3  Page no.-109\n\n");

//***Data***//
// All the data are same as in the previous example 
// The equation 6.5 reported in the book is 
// delta_V_mixing = V_solution _final-V_(solution and material to be mixaed) = integrate(v_i-v_i_0)dn
// Here the integrated average value of v_i over the molality range from 0 to 1 is
v_i_average = 0.05425;//[L/mol]
// and
v_i_0 = 0.0584;//[L/mol]
delta_n = 1.00;//[mol]
delta_V_mixing = (v_i_average-v_i_0)*delta_n;//[L]
delta_V_mixing = delta_V_mixing*1000;//[cm^(3)]
printf("Volume change on mixing etanol and water is %f cm^(3)",delta_V_mixing);
// Which is same as the solution in example 6.2