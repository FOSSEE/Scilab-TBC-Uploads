clear ;
clc;
// Example 6.3
printf('Example 6.3\n\n');
printf('Page No. 144\n\n');

// given
Th_i = 130;//Inlet temperature of hot liquid in degree celcius 
Th_o = 90;// Outlet temperature of hot liquid in degree celcius
Tc_i = 20;// Inlet temperature of cold liquid in degree celcius
Tc_o = 50;// Outlet temperature of cold liquid in degree celcius

//For Couter-current flow
T1 = Th_i - Tc_o;
T2 = Th_o - Tc_i;
Tm_1 = ((T2-T1)/log(T2/T1));
printf('The logarithmic mean temperature difference for counter-current flow is %.0f degree celcius \n',Tm_1)


//For Co-current flow
T3 = Th_i - Tc_i;
T4 = Th_o - Tc_o;
Tm_2 = ((T3-T4)/log(T3/T4));
printf('The logarithmic mean temperature difference for co-current flow is %.0f degree celcius \n',Tm_2)
