function [D] = dft_mtx(n)
f = 2*%pi/n;                 // Angular increment.
w = (0:f:2*%pi-f/2).' *%i;   //Column.
//disp(w)
x = 0:n-1;                  // Row.
D = exp(-w*x);              // Exponent of outer product.
for i = 1:n
    for j = 1:n
        if((abs(real(D(i,j)))<0.0001)&(abs(imag(D(i,j)))<0.0001))
            D(i,j)=0;
        elseif(abs(real(D(i,j)))<0.0001)
            D(i,j)= 0+%i*imag(D(i,j));
        elseif(abs(imag(D(i,j)))<0.0001)
            D(i,j)= real(D(i,j))+0;
        end
    end
end
endfunction