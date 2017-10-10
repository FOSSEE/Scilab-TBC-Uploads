//symsum//
 function [Ztransfer]= ztransfer_new (sequence,n)
  z = poly (0, 'z' , 'r' );  Ztransfer = sequence *(1/z )^n'
endfunction
sequence=[0 2 0 0 -3 0 0 8]
y=ztransfer(sequence);
disp(y,"ans=")