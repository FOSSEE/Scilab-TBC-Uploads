//Example 6.16.
clc
format(6)
delta_IC=0.995*10^-3
delta_IE=1*10^-3
alpha=delta_IC/delta_IE
disp(alpha,"Common base current gain is, alpha = delta_IC/delta_IE = ")
beta=alpha/(1-alpha)
disp(beta,"Common-emitter current gain is beta = alpha / (1-alpha) = ")