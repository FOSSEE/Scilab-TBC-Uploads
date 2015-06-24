//Example 6.5.
clc
format(6)
alpha=0.97
disp("If alpha=0.97, beta = alpha/(1 - alpha)")
beta=alpha/(1-alpha)
disp(beta,"beta = ")
beta1=200
disp("If beta=200, alpha = beta/(beta + 1)")
alpha1 =beta1/(beta1+1)
disp(alpha1,"alpha = ")