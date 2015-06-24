// Scilab Code Ex7.10: Page-263 (2014)
clc; clear;
function flag = check_allowance(dn, dl, dml, dms)
    if (dl == -1 | dl == 1 | dml == -1 | dml == 0 | dml == 1 | dms == -1 | dms == 0 | dms == 1) & dl <> 0 then
        flag = 1;
    else
        flag = 0;    
    end
endfunction
state = [2 0 0 1/2; 3 1 1 1/2; 2 0 0 1/2; 3 0 0 1/2; 4 2 -1 -1/2; 2 1 0 1/2];
for i = 1:2:5
    flag = 0; 
    d_n = state(i,1) - state(i+1,1);
    d_l = state(i,2) - state(i+1,2);
    d_m_l = state(i,3) - state(i+1,3);
    d_m_s = state(i,4) - state(i+1,4);
    flag = check_allowance(d_n, d_l, d_m_l, d_m_s);
    if flag == 1 then
        printf("\n\nThe transition (%d,%d,%d,1/%d) --> (%d,%d,%d,1/%d) is allowed", state(i,1), state(i,2), state(i,3), state(i,4)*4, state(i+1,1), state(i+1,2), state(i+1,3), state(i+1,4)*4);
        delta_E = -13.6*(1/state(i+1)^2-1/state(i)^2);
        printf("\nThe energy of this transition is %4.2f eV", delta_E);
    else 
        printf("\n\nThe transition (%d,%d,%d, %d)--> (%d,%d,%d,%d) is not allowed", state(i,1), state(i,2), state(i,3), state(i,4), state(i+1,1), state(i+1,2), state(i+1,3), state(i+1,4));
    end
end

// Result
// The transition (2,0,0,1/2) --> (3,1,1,1/2) is allowed
// The energy of this transition is 1.89 eV

// The transition (2,0,0, 0)--> (3,0,0,0) is not allowed

// The transition (4,2,-1,1/-2) --> (2,1,0,1/2) is allowed
// The energy of this transition is -2.55 eV 