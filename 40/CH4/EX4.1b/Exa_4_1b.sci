function[za]=ztransfer(sequence,n)
    z=poly(0,'z','r')
    za=sequence*(1/z)^n'
endfunction
x1=[2 1 -5 4];
n=-1:length(x1)-2;
ztransfer(x1,n)    