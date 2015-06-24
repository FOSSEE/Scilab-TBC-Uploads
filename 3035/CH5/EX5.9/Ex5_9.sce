
// Variable Declaration
n = 3       //Number of disc

unit_1 = 100/3.072                  //Disc voltage as % of conductor voltage of Topmost unit
unit_2 = 1.014/3.072*100            //Disc voltage as % of conductor voltage of second unit
unit_3 = 1.058/3.072*100            //Disc voltage as % of conductor voltage of bottom unit
efficiency = 3.072*100/(n*1.058)    //String efficiency(%)

// Calculation Section
unit_1g = 100/3.752                 //Disc voltage as % of conductor voltage of Topmost unit
unit_2g = 1.18/3.752*100            //Disc voltage as % of conductor voltage of second unit
unit_3g = 1.5724/3.752*100          //Disc voltage as % of conductor voltage of bottom unit
efficiency1 = 3.752*100/(n*1.5724)    //String efficiency(%)

// Result Section
printf('Disc voltages as a percentage of the conductor voltage with guard ring are :')
printf('Topmost unit = %.2f percent' ,unit_1)
printf('Second unit = %.2f percent' ,unit_2)
printf('Bottom unit = %.2f percent' ,unit_3)
printf('String efficiency = %.2f percent' ,efficiency)
printf('\nDisc voltages as a percentage of the conductor voltage without guard ring are :')
printf('Topmost unit = %.2f percent' ,unit_1g)
printf('Second unit = %.2f percent' ,unit_2g)
printf('Bottom unit = %.2f percent' ,unit_3g)
printf('String efficiency = %.2f percent' ,efficiency1)
