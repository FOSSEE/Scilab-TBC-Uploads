// Example 1.9
//Calculating Branch Variables
// From fig 1.33
v_4=24;
i_4=v_4/8; // current through 8 Ohm resistor
v_3=7*i_4;
// Applying KVL around the Loop on the right
v_2=v_3+v_4;// Voltage across Current source
v_1=v_2-25;// voltage across 10 Ohm resistor
i_2=v_2/9;//Current across 9 Ohm resistor
i_1=-v_1/10;// Current across 10 Ohm resistor
p_v=25*i_1;// Power supplied by the Voltage Source
i_s=i_2+i_4-i_1;// Current supplied by current source
// Power supplied by Current source is given by,
p_i=v_2*i_s;
// Power Dissipated aross various Resistors
p_r=10*(i_1)^2+9*(i_2)^2+7*(i_4)^2+8*(i_4)^2;
disp(i_s,"Current supplied by Current source(in Amps)=")
disp(p_v,"Power supplied by Voltage source(in Watt)=")
disp(p_i,"Power supplied by Current source(in Watt)=")
disp(p_r,"Power Dissipated across various Resistors(in Watt)=")
