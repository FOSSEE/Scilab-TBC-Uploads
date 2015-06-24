function[DCT] = dct_mtx(n)
[cc,rr] = meshgrid(0:n-1);
//disp(cc)
//disp(rr)
DCT = sqrt(2 / n) * cos(%pi * (2*cc + 1) .* rr / (2 * n));
DCT(1,:) = DCT(1,:) / sqrt(2);
endfunction