// Example 2.8
// Equivalent Resistance with a VCCS(Voltage controlled Current Source)
function[R_eq]=VCCS(R,g_m)
// From figure 2.19, applying KCL at upper node
// i= i_R - i_c= (v/R)-(g_m*v) = ((1-g_m*R)*v )/R
if R*g_m == 1 then
    R_eq= %inf; // Circuits behaves like an open circuit
    else
R_eq= R/(1-g_m*R);// Equivalent Resistance of the circuit
end
endfunction
// For Example take g_m= 2 and R = 0.5
funcprot(0);
g_m= 2;
R= 0.5;
R_eq= VCCS(R,g_m);
disp(R_eq,"Equivalent Resistance of the circuit(in Ohms)=")
