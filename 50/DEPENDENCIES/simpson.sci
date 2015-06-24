function I=simpson(a,b,f)
    I=((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
endfunction