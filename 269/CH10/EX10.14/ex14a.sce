s=%s
p=s^4+10*s^3+35*s^2+50*s+24
h=routh_t(p)
disp(h)
disp('from the table the system is stable')