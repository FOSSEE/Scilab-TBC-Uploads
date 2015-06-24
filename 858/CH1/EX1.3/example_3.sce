clc
clear 
printf("example 1.3 page number 20\n\n")
//to find the average weight, weight composition, gas volume in absence of SO2
y_CO2 = 0.25;
y_CO = 0.002;
y_SO2 = 0.012;
y_N2 = 0.680;
y_O2 = 0.056;

Mm = y_CO2*44+y_CO*28+y_SO2*64+y_N2*28+y_O2*32;
printf ("\n molar mass = %d \n",Mm)

printf("\n finding weight composition \n")
w_CO2 = y_CO2*44*100/Mm;
printf ("\n weight_CO2 = %f \n\n",w_CO2)
w_CO = y_CO*28*100/Mm;
printf ("weight_CO = %f \n\n",w_CO)
w_SO2 = y_SO2*64*100/Mm;
printf ("weight_SO2 = %f \n\n", w_SO2)
w_N2 = y_N2*28*100/Mm;
printf ("weight_N2 = %f \n\n", w_N2)
w_O2 = y_O2*32*100/Mm;
printf ("weight_O2 = %f \n\n", w_O2)

printf("if SO2 is removed \n\n")
v_CO2 = 25;
v_CO = 0.2;
v_N2 = 68.0;
v_O2 = 5.6;
v = v_CO2+v_CO+v_N2+v_O2;
v1_CO2 = (v_CO2*100/98.8);

printf ("volume_CO2 = %f \n\n", v1_CO2)
v1_CO = (v_CO*100/98.8);
printf ("volume_CO = %f \n\n",v1_CO)
v1_N2 = (v_N2*100/98.8);
printf ("volume_N2 = %f \n\n",v1_N2)
v1_O2 = (v_O2*100/98.8);
printf ("volume_O2 = %f \n\n",v1_O2 )
