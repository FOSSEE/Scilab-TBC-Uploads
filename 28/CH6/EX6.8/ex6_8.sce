s=%s;
p=s^6+2*s^5+8*s^4+12*s^3+20*s^2+16*s+16
r=routh_t(p)
roots(p)
disp(0,"the number of real part of roots lying in the right half")
printf("System is stable")
