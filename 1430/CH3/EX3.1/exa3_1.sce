// Example 3.1
// Model of a Battery
v_s=6; // Terminal voltage of Battery when i=0
R_s= -(6.0-5.8)/(0-0.05);// Slope Resistance from v-i curve
// Setting v>= 0.9v_s=5.4 V
// Using Ohm's Law and above mentioned conditions we get
// 5.4=(6*R_L)/(4+R_L)
R_L=(5.4*4)/0.6;// Minimum value of Load resistance for treating Battery as a
// ideal voltage source
// R_L >=36 Ohms
disp(R_L,"Minimum value of Load Resistance(in Ohms)=")
