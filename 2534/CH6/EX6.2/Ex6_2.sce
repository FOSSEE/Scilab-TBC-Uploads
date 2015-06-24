//Ex6_2
clc
IE = 1.2*10^-3
beta = 60
alpha = beta/(1+beta)
disp("beta = "+string(beta))//current gain in CE configuration
disp("alpha = beta/(1+beta) = "+string(alpha))//current gain in CB configuraion
disp("IE = "+string(IE)+"A")//emitter current
IB = IE/(beta+1)
IC = beta*IB
disp("IB = IE/(beta+1) = "+string(IB)+"A")//base current
disp("IC = beta*IB = "+string(IC)+"A")//collector current
