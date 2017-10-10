//chapter3
//example3.5
//page58

// use of Rsg = to obtain desired potential on screen grid since it is connected between power supply and screen grid
// use of Csg = to provide ac grounding for the screen

Ebb=300 // V
Ib=10d-3 // A
Rl=4.7d3 // ohm
Rk=68 // ohm
Isg=3d-3 // A
Vsg=150 // V

cathode_voltage=Ebb-(Ib*Rl)
grid_cathode_bias=-Rk*(Ib+Isg) // since current through cathode resistance is Ib+Isg
Rsg=(Ebb-Vsg)/Isg // since plate supply voltage = grid voltage + drop across Rsg
Rsg_kilo_ohm=Rsg/10^3 // in kilo ohm

printf("zero signal plate cathode voltage = %.3f V \n",cathode_voltage)
printf("grid cathode bias = %.3f V \n",grid_cathode_bias)
printf("Resistor Rsg = %.3f ohm or %.3f kilo ohm \n",Rsg,Rsg_kilo_ohm)
