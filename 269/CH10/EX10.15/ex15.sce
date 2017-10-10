s=%s
p=s^3+2*s^2+2*s+40
h=routh_t(p)
disp(h)
disp("from the table there is a sign change ")
disp("from 2 to -18 and -18 t0 40 and hence system is not stable ")