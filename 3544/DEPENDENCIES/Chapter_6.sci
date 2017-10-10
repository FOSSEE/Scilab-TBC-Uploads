
///////////////////////////////
//     base-64 encoding      //
///////////////////////////////

function [enc]=encoding_table()
    a = ascii('A')
    enc = []
    
    
    for i=0:25
        enc(i+1) = i+a
    end
    
    
    for i=26:51
        enc(i+1) = i+a+6
    end
    
    for i=52:61
        enc(i+1) = i-52+ascii('0')
    end
    
    enc(63) = ascii('+')
    enc(64) = ascii('/')
    
endfunction
