s=%s
p=s^3+2*s^2+2*s+4
h=routh_t(p)
disp(h)
disp("constant term 4 causes the system to be unstable")
disp("so the polynomial formed is")
disp("2*s^2+4")
disp("applyin RH on this polynomial")
q=s^2+2
r=routh_t(q)
disp(r)
