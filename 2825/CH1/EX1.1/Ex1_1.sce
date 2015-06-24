//Ex1_1 Pg-43
clc
disp("Refer to the figure 1.52")
disp("Hold the resistor as shown in the figure such that tolerance is on your extreme right.")
disp("Now the value of the resistor is equal to")
disp("  Red      Black       Blue        Gold")
disp("   2         0          6         (+/-)5%")
red=2 //red value
blk=0 //black value
blu=6 //blue value
gld=5 //gold value
value_res=(red*10+blk)*10^blu //value of resistor
printf("\n The value of resistor is %.0f ohm (+/-)%.0f%%",value_res,gld)
per_val=0.05*value_res
pos_value_res=value_res+per_val //positive range of resistor
neg_value_res=value_res-per_val //negative range of resistor
printf("\n The value of resistor is %.0f Mohm and %.0f Mohm",neg_value_res*1e-6,pos_value_res*1e-6)
