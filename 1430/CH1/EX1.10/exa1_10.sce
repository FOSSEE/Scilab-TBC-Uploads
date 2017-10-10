// Example 1.10
// Design of a Biasing Circuit
// from figure 1.34, Applying KVL in left loop we get,
v_a=12-4-5;//Voltage drop across R_a
R_a=v_a/(20*10^-3);// Value of resistor R_a
// Current through R_b
i_b=(20-16)*(10^-3);
R_b=5/i_b;//Value of resistor R_b
disp(R_a,"Value of Resistor R_a(in Ohms)=")
disp(R_b,"Value of Resistor R_b(in Ohms)=")
