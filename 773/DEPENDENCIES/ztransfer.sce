//function//
function [Ztransfer]=ztransfer(sequence)
z = poly(0, 'z', 'r')
Ztransfer=sequence*(1/z)^[0:(length(sequence)-1)]'
endfunction
