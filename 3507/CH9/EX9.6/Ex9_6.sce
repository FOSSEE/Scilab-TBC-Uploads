//chapter9
//example9.6
//page147

V=20 // V
V_D_Ge=0.3 // V

// when voltage is applied, Ge diode turns on first and 0.3 V is maintained across circuit so Si diode never turns on. So
V_A=V-V_D_Ge

printf("voltage V_A at point A = %.3f V \n",V_A)
