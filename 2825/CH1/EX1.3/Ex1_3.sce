//Ex1_3 Pg-44
clc
disp("The specification of the resistor from the color coding table is as follows")
disp("  1st_Band    2nd_Band    3rd_Band    4th_Band")
printf("     Gray        Blue        Gold       Silver")
disp("      8          6        10^(-1)     (+/-)10%")
gray=8 //gray value
blu=6 //blue value
gld=10^-1 //gold value
sil=10 //silver value in %
val_res=(gray*10+blu)*gld
printf("\n The value of resistor is %.1f ohm (+/-)%.0f%%",val_res,sil)
sil_ab=0.1 //absolute gold value
per_val=sil_ab*val_res
printf("\n Now, 10%% of 8.6 ohm = %.2f ohm",per_val)
range_high=val_res+per_val //higher range
range_low=val_res-per_val //lower range
printf("\n\n Obviously resistance should lie within the range %.2f ohm(+/-)%.2f ohm,\n or between %.2f ohm and %.2f ohm.",val_res,per_val,range_high,range_low)
