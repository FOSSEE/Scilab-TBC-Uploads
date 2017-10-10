// Example 1.7
// A Transistor Circuit
// Enclosing the Transistor with a supernode and using KCL we get i_b as
i_b=(10.5*10^-3)-(10*10^-3);
// Applying KVL for the Loop CEBC we get
v_ce=1+6;
i_4=10*10^-3; // from the figure 1.29
v_3=1; // from the figure 1.29
// at node D
i_1=i_4+(2*10^-3);
// at node A
i_3=(2*10^-3)-i_b;
// Loop DCEFD
v_4=9-v_ce
// Loop AFDA
v_2=v_3-9;
disp(i_b,"Current in the Base of the Transistor,i_b(in Amps)=")
disp(v_ce," Volatge across Collector-Emitter terminal,v_ce(in Volts)=")
disp(i_4,"current through the Branch DC, i_4(in Amps)=")
disp(v_3,"Voltage across the branch AF,v_3(in Volts)") 
disp(i_1,"Current through the Voltage source,i_1(in Amps)=")
disp(i_3,"current through the branch AF,i_3(in Amps)=")
disp(v_4,"Voltage across the Branch DC,v_4(in Volts)=")
disp(v_2,"Voltage across the Current Source,v_2(in Volts)=")
