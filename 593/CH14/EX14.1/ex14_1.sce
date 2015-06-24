clear;
//clc();

// Example 14.1
// Page: 379
printf("Example-14.1  Page no.-379\n\n");

//***Data***//
T = 300;//[K] Temperature of the natural gas well
R = 8.314;//[J/(mol*K)] universal gas constant
z_1 = 0;//[m]
// At the surface of the well mole fraction of the components are
y_methane_surf = 85/100;//[mol%]
y_ethane_surf = 10/100;//[mol%]
y_propane_surf = 5/100;//[mol%]
P = 2;//[MPa] Total equilibrium pressure 
z_2 = 1000;//[m] Depth of the well 

// Molecular weights of the components are
M_methane = 16/1000;//[kg/mol]
M_ethane = 30/1000;//[kg/mol]
M_propane = 44/1000;//[kg/mol]

// Now, we have the relation between the fugacities of a component at z_1 and z_2 as
// f_i_2/f_i_1 = exp((-M_i*g*(z_2-z_1))/(R*T))  , where g is gravitational accelaration and its value is
g = 9.81;//[m/s^(2)]

// Fugacities of the various components at the surface i.e. at z = z_1 is
f_methane_1 = y_methane_surf*P;//[MPa]
f_ethane_1 = y_ethane_surf*P;//[MPa]
f_propane_1 = y_propane_surf*P;//[MPa]

// Now, fugacities at z = z_2 are
f_methane_2 = f_methane_1*exp((-M_methane*g*(z_1-z_2))/(R*T));;;//[MPa]
f_ethane_2 = f_ethane_1*exp((-M_ethane*g*(z_1-z_2))/(R*T));//[MPa]
f_propane_2 = f_propane_1*exp((-M_propane*g*(z_1-z_2))/(R*T));//[MPa]

// Let at z = z_1 total pressure of the gases are P_2
// Then, fugacities of the ith component is also given as 
// f_i_2 = y_i_2*P_2
// Writing the expression for all the component ad adding them we get 
// (f_methane_2 + f_ethane_2 + f_propane_2 ) = y_methane_2*P_2 + y_ethane_2*P_2 + y_propane_2*P_2
// or
// (f_methane_2 + f_ethane_2 + f_propane_2 ) = P_2*(y_methane_2 + y_ethane_2 + y_propane_2)
// and
// (y_methane_2 + y_ethane_2 + y_propane_2) = 1   ,so
P_2 = (f_methane_2 + f_ethane_2 + f_propane_2 );//[MPa]

// Now the mole fractions of the components are 
// y_i_2 = f_i_2/P_2  , so
y_methane_2 = f_methane_2/P_2;
y_ethane_2 = f_ethane_2/P_2;
y_propane_2 = f_propane_2/P_2;

printf("The mol fraction of the methane at the depth 1000m is %f\n",y_methane_2);
printf("The mol fraction of the ethane at the depth 1000m is %f\n",y_ethane_2);
printf("The mol fraction of the propane at the depth 1000m is %f\n",y_propane_2);
