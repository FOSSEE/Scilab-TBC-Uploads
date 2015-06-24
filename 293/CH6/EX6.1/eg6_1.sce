function F = laplace(s, T1, T2)
    //pulse:
    // f = u(t - T1) - u(t - T2)
    F = integrate('exp(-s*t)','t',T1,T2); //laplace transform of the pulse 
endfunction

