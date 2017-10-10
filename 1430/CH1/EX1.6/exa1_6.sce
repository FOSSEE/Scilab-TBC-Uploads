// Example 1.6
// A Strain Gauge
function[delta_R]=Change_in_Resistance(R,delta_l,l)                                   // R= Unstrained Resistance,delta_l= Change in length,l= Original Length
    delta_R=2*R*(delta_l/l)
endfunction
// Exercise 1.10 to demonstrate example 1.6
L=100;
delta_L=0.1;
Radius=0.002;
delta_R=Change_in_Resistance(Radius,delta_L,L);
disp(delta_R,"Change in Resistance(in Ohms)=")
