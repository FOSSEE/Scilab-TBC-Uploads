// Example 4.5
// Node analysis with a Supernode
// From figure 4.15, Applying KCL at Supernode
disp("((v_1-30)-v_2)/2-1+(v_1-v_2)/10+(v_1-50)/5=0 -------- Equation 1")
//Applying KCL at node 2
disp("(v_2-v_1)/10+(v_2-(v_1-30))/2+v_2-7=0 --------- Equation 2")
disp("Rearrangement then yields a pair of equations in standard form,")
disp("0.8v_1-0.6v_2=26")
disp("-0.6v_1+1.6v_2=-8")
G=[0.8,-0.6;-0.6,1.6]; // Conductance Matrix
i=[26;-8]; // Current Matrix
v=G\i;
v_1=v(1,1);
v_2=v(2,1);
disp(v_1,"Voltage at Node 1(in Volts)=")
disp(v_2,"Voltage at Node 2(in Volts)=")
