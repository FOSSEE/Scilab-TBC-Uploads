//clear//
//Example 11.9:Gain and Phase Margins and their
//associated cross over frequencies
s =poly(0,'s'); // Define ss as polynomial variable
//Create s transfer function in forward path
F = syslin('c',[(4*(1+0.5*s))/(s*(1+2*s)*(1+0.05*s+(0.125*s)^2))])
B = syslin('c',(1+0*s)/(1+0*s)) 
OL = F*B;
fmin = 0.01; // Min freq in Hz
fmax = 10; // Max freq in Hz
scf(1);
//clf;
// Plot frequency response of open loop transfer function 
bode(OL,0.01,10); 
// display gain and phase margin and cross over frequencies
show_margins(OL);
[gm,fr1] = g_margin(OL)
[phm,fr2] = p_margin(OL)
disp(gm,'gain margin in dB')
disp(fr1,'gain cross over frequency in Hz')
disp(phm,'phase margin in dB')
disp(fr2,'phase cross over frequency in Hz')
