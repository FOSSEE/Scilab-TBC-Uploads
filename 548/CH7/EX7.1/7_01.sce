funcprot(0);
function[y] = f(x,y)
    z = poly(0,'z');
    y = x^2+y^2+ z^2;
endfunction
ans= derivat(f(1,1)); // finding derivative with respect to z at some point x,y;
disp(ans,"derivative of x^2+y^2+ z^2 with respect to z:");
