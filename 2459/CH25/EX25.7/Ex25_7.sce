//chapter25
//example25.7
//page552

S=0.03 // mm per volt
spot_shift=3 // mm

V=spot_shift/S // since spot shift = deflection sensitivity * applied voltage

printf("applied voltage = %.3f V \n",V)
