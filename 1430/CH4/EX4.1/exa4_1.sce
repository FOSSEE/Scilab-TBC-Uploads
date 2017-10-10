// Example 4.1
// Node Analysis with One Unknown
// From figure 4.3
G_11=1/6+1/(5+7)+1/4; // Sum of all conductance connected at node 1
i_s1=18/6+(-60/4); // Net equivalent source current into node 1
 // From node equation G_11*v_1=i_s1
 v_1=i_s1/G_11; // Node voltage v_1
 // Using Ohm's Law
 i_a=(18-v_1)/6; //Current through 6-Ohm resistor
 i_b=v_1/(5+7);// Current through 5-Ohm resistor
 i_c=(v_1-(-60))/4; // Current through 4-Ohm resistor
 disp(v_1,"Node Voltage(in Volts)=")
 disp(i_a,"Branch Current through 6-Ohms(in Amps)=")
 disp(i_b,"BRanch Current through 5-Ohms(in Amps)=")
 disp(i_c,"Branch Current through 4-Ohms(in Amps)=")
