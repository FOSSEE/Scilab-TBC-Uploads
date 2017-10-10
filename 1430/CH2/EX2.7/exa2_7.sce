// Example 2.7
// Analysis with a VCVS(Voltage controlled Voltage Source)
// From Figure 2.16(a)
disp("Call the function VCVS with input argument v_s")
function[i_1]=VCVS(v_s)
// Applying KVL on Right-hand loop we get v_2=3*i_1
//Applying KCL at Upper node yields, i=1.5i_1 
// Using KVL in Left Loop
i_1=v_s/(4*(1.5)+3);// v_s=4*i+v_2 
endfunction
// For Example let us assume the value of v_s= 9 volts
V_s=9;
I_1=VCVS(V_s);
disp(I_1,"Current through 10-ohm resistance(in Amps)=")
