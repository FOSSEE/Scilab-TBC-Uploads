syms B1 x1 x2 B2 K M s
disp("differential equations are")
F=B1*s*(x1-x2)
disp(F)
zero=B1*s*(x2-x1)+M*s^2*x2+K*x2+B2*s*x2
disp(zero)