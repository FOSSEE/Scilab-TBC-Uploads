function A_ol=open_loop_gain(A_ol_mid,f,f_c_ol)
    A_ol=A_ol_mid/(sqrt(1+(f/f_c_ol)^2))
endfunction