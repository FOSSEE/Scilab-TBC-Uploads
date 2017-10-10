//Graphical//
function [Ztransfer]=ztransfer_new(sequence,n)
z = poly(0, 'z', 'r')
Ztransfer=sequence*(1/z)^n'
endfunction
