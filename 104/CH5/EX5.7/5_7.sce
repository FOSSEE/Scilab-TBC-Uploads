//characteristic equation from transfer function
s=%s
sys=syslin('c',1/(s^3+5*s^2+s+2))
c=denom(sys)
disp(c,"characteristic equation=")