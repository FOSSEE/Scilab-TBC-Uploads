function [L012,L02,L01]=iteratedinterpol (x,f,n)
    X=poly(0,"X");
    L01=(1/(x(2)-x(1)))*det([f(1) x(1)-X;f(2) x(2)-X]);
    L02=(1/(x(3)-x(1)))*det([f(1) x(1)-X;f(3) x(3)-X]);
    L012=(1/(x(3)-x(2)))*det([L01 x(2)-X;L02 x(3)-X]);
    
endfunction
    
    
    
    
    
    
    
    
    
    
   