
// Variable Declaration
MVA_base = 5.0   //Base MVA on both sides
hv_base = 11.0   //Line to line base voltages in kV on h.v side
lv_base = 0.4    //Line to line base voltages in kV on l.v side
Z = 5.0/100      //Impedance of 5%

// Calculation Section
Z_base_hv = (hv_base)**2/MVA_base    //Base impedance on h.v side(ohm)
Z_base_lv = (lv_base)**2/MVA_base    //Base impedance on l.v side(ohm)
Z_act_hv = Z * Z_base_hv             //Actual impedance viewed from h.v side(ohm)
Z_act_lv = Z * Z_base_lv             //Actual impedance viewed from l.v side(ohm)

// Result Section
printf('Base impedance on h.v side = %.1f ohm' ,Z_base_hv)
printf('Base impedance on l.v side = %.3f ohm' ,Z_base_lv)
printf('Actual impedance viewed from h.v side = %.2f ohm' ,Z_act_hv)
printf('Actual impedance viewed from l.v side = %.4f ohm' ,Z_act_lv)
