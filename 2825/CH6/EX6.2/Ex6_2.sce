//Ex6_2 Pg-335
clc

printf("Draw a vertical line from temperature axis at 50 degree \n  celcius to cut the 71 degree celcius line. Join the point of \n intersection P through a horizontal line at Y-axis. The point \n where it intersects Y-axis gives the value of permissible \n dissipation equal to 45%% of maximum rating. \n")

per=.45 //permissible dissipation in percentage
max_diss=165 //maximum dissipation
diss_cap=per*max_diss //dissipation capability
disp("The dissipation capability at 50 degree celcius")

printf("                            = %.0f mW \n ",diss_cap)

disp("     Its value ranges from (0.2) degree celcius/watt to (1000) degree celcius/watt for a transistor  that has an efficient heat sink")

disp("              Tj = Ta + tetha*Pd")

disp("  The above equation reflects that collector-junction temperature Tj of the transistor will be higher than ambient temperature Ta by an amount equal to the product of tetha and Pd.")
