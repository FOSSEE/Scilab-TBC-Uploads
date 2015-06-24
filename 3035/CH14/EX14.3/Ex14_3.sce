
// Variable Declaration
kv_hv = 66.0                            //Voltage rating of HV side of transformer(kV)
kv_lv = 11.0                            //Voltage rating of LV side of transformer(kV)
CT = 300.0/5                            //CT ratio on low tension side

// Calculation Section
I = 300.0                               //Assumed current flowing at low tension side(A)
I_HT = kv_lv/kv_hv*I                    //Line current on HT side(A)
I_LT_CT = I/CT                          //Pilot wire current from LT side(A)
CT_ratio_HT = I_HT*3**0.5/I_LT_CT       //Ratio of CT on HT side


// Result Section
printf('Ratio of CT on high tension side = %.f√3/%.f' ,I_HT,I_LT_CT)
