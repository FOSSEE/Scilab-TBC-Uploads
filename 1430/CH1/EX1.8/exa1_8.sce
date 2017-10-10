// Example 1.8
// Series and Parallel Source Connections
// From figure 1.32(a)
v_x=10; // Voltage across two terminal passive device
i_x=2.5;// Current across two terminal passive device
// Applying KVL around the loop
v_r=12-v_x;// Voltage across the Series resistor
//Since Series resistor carries the same current as carried by unknown two terminal
//device we get,
R_ser=v_r/i_x;
// from figure 1.32(b)
i_R=3-i_x; // Current through the Parallel Resistor
R_par=v_x/i_R;
disp(R_ser,"Value of Series connected resistor(in Ohms)=")
disp(R_par,"Value of Parallel connected resistor(in Ohms)=")
