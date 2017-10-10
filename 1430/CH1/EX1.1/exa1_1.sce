// Example 1.1
// charge Transfer and Average Current
function[i]=f(t)
    i=10*sin(%pi*t/2)
endfunction            // Current as a function of time
q_T=intg(0,6,f);      // Total charge is given by integrating area under the curve of                     // current vs time
i_av=q_T/6;
disp(q_T,"total charge Transfer is(in coulombs) =")
disp(i_av,"Average current is (in Amps)=")
    
