function [y,angle] = vector(a,b)
    y = sqrt((real(a)-real(b))^2+(imag(a)-imag(b))^2);
    angle = atan((imag(a)-imag(b)),(real(a)-real(b)))*180/%pi;
endfunction