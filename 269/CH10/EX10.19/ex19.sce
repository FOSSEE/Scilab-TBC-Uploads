s=%s
p=s^6+5*s^5+11*s^4+25*s^3+36*s^2+30*s+36
h=routh_t(p)
disp(h)
disp("the polynomial obtained is")
disp("6s^4+30s^2+36")
disp("applyin RH on this polynomial")
q=s^2+5*s+6
r=routh_t(q)
disp(r)