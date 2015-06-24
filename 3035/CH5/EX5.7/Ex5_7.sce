
// Variable Declaration
v_dry = 65.0     //Dry power frequency flashover voltage for each disc(kV)
v_wet = 43.0     //Wet power frequency flashover voltage for each disc(kV)
V = 110          //Voltage of system to be insulated(kV)
m = 1.0/6        //capacitance of each link pin to self capacitance
n_4 = 4          //Number of units in a string
n_8 = 8          //Number of units in a string
n_10 = 10        //Number of units in a string
v_dry_4 = 210.0  //Dry power frequency flashover voltage for 4 units(kV)
v_dry_8 = 385.0  //Dry power frequency flashover voltage for 8 units(kV)
v_dry_10 = 460.0 //Dry power frequency flashover voltage for 10 units(kV)
v_wet_4 = 150.0  //Wet power frequency flashover voltage for 4 units(kV)
v_wet_8 = 285.0  //Wet power frequency flashover voltage for 8 units(kV)
v_wet_10 = 345.0 //Wet power frequency flashover voltage for 10 units(kV)

// Calculation Section
eff_dry_4 = v_dry_4*100/(n_4*v_dry)
eff_dry_8 = v_dry_8*100/(n_8*v_dry)
eff_dry_10 = v_dry_10*100/(n_10*v_dry)
eff_wet_4 = v_wet_4*100/(n_4*v_wet)
eff_wet_8 = v_wet_8*100/(n_8*v_wet)
eff_wet_10 = v_wet_10*100/(n_10*v_wet)

a_1 = 1
a_2 = (1+m)*a_1
a_3 = m*(a_1+a_2)+a_2
a_4 = m*(a_1+a_2+a_3)+a_3
a_5 = m*(a_1+a_2+a_3+a_4)+a_4
a_6 = m*(a_1+a_2+a_3+a_4+a_5)+a_5
a_7 = m*(a_1+a_2+a_3+a_4+a_5+a_6)+a_6
a_8 = m*(a_1+a_2+a_3+a_4+a_5+a_6+a_7)+a_7
v_1 = V/(a_1+a_2+a_3+a_4+a_5+a_6+a_7+a_8)    //Voltage across unit 1(kV)
v_8 = a_8*v_1                                //Voltage across unit 8(kV)
s_v_8 = v_8/V                                //Ratio of Voltage across unit 8 to string voltage
voltage_2 = V/(3**0.5)*s_v_8                 //Voltage across the disc adjacent to conductor(kV)
sf_dry = v_dry/voltage_2                     //Factor of safety for dry flashover
sf_wet = v_wet/voltage_2                     //Factor of safety for wet flashover


// Result Section
printf('Case(i) :')
printf(' No. of units       Dry string efficiency(%%)      Wet string efficiency(%%)')

printf(' %d                  %.2f                         %.2f        ' ,n_4,eff_dry_4,eff_wet_4)
printf(' %d                  %.2f                         %.2f        ' ,n_8,eff_dry_8,eff_wet_8)
printf(' %d                 %.2f                         %.2f        ' ,n_10,eff_dry_10,eff_wet_10)

printf('\nCase(ii) :')
printf('Factor of safety for dry flashover = %.2f' ,sf_dry)
printf('Factor of safety for wet flashover = %.2f' ,sf_wet)
