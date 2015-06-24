//Ex1_2 Pg-43
clc
disp("With the help of colour coding table, one finds")
disp("  1st_Band    2nd_Band    3rd_Band    4th_Band")
printf("    Yellow      Violet      Orange      Gold")
disp("      4          7         10^3     (+/-)5%")
yel=4 //yellow value
vio=7 //violet value
org=1e3 //orange value
gld=5 //gold value in %
val_res=(yel*10+vio)*org
printf("\n The value of resistor is %.2f kohm (+/-)%.0f%%",val_res*1e-3,gld)
gld_ab=0.05 //absolute gold value
per_val=gld_ab*val_res
printf("\n Now, 5%% of 47k_ohm = %.0f ohm",per_val)
range_high=val_res+per_val //higher range
range_low=val_res-per_val //lower range
printf("\n\n Thus resistance should be within the range %.2f kohm(+/-)%.2f Kohm,\n or between %.2f kohm and %.2f kohm.",val_res*1e-3,per_val*1e-3,range_low*1e-3,range_high*1e-3)
