// Example 2.4
// Ladder Calculations
//From figure 2.8(a)
v_s=40; // Value of Voltage source
R_par=((20*20)/(20+20))*10^3;//Equivalent resistance of two parallel 20k ohms resistors
R_ser=(4+5+6)*10^3;//Equivalent resistance of three series resistances.
//from figure 2.8(b)
R_eq= 2*10^3+ ((10*15)/(10+15))*10^3;
//The entire ladder reduces to single equivalent resistance R_eq
// From figure 2.8(c)
i=v_s/R_eq;// Terminal Current
p=v_s*i;// total Power dissipated
// from figure 2.8(b), using KVL in Left loop
v_x=40-(2*10^3)*i; // Voltage across 20k ohm resistor
// form figure 2.8(a),Using three-resistor voltage divider
v_y=(5*v_x)/(4+5+6);// Voltage across 5k ohm resistor
disp(i,"Terminal Current(in Amps)=")
disp(p,"Total Power dissipated in Circuit(in Watt)=")
disp(v_x,"Voltage across 20k ohm resistor(in Volts)=")
disp(v_y,"Voltage across 5k ohm resistor(in Volts)=")
