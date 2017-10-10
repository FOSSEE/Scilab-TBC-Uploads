clear
// Variable declaration
T_c1=30// Condensing temperature for larger condenser in °C
T_c2=35// Condensing temperature for smaller condenser in °C
Rc_1=242// Rated capacity of plant for larger condenser in kW
Rc_2=218// Rated capacity of plant for smaller condenser in kW
Rt_1=1802// Running time (kW-h)
Rt_2=2000// Running time (kW-h)
Ci_1=60// Compressor electrical input power in kW
Ci_2=70// Compressor electrical input power in kW
Ec_1=11533// Electricity cost per year (£)
Ec_2=14933// Electricity cost per year (£)
C_1=14000// Cost of the larger condenser in £
C_2=8500// Cost of the smaller condenser in £

// Calculation
Es=Ec_2-Ec_1// Cost of the larger condenser in £
Bet=(C_1-C_2)*Es**-1// Break-even time in years
printf("\n Break-even time=%1.1f years",Bet)

