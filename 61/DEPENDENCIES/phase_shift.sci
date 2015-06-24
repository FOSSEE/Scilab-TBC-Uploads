function theta=phase_shift(f,f_c)
    theta_rad=-atan((f/f_c))
    theta=theta_rad*180/%pi;
endfunction