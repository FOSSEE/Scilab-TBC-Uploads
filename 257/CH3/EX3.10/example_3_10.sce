syms s t R C

C=R*(1+2*%e^-s)/(2*s^2 + 2*s +1)

disp(C/R,'transfer function=')
