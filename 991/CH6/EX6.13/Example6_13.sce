//Example 6.13.
clc
format(6)
ICBO=10*10^-6
hFE=50
beta=hFE
IB=0.25*10^-3
IC=(beta*IB)+((1+beta)*ICBO)
IC1=IC*10^3
disp("(a) To find the value of collector current when IB = 0.25mA")
disp(IC1,"IC(mA) = (beta*IB) + ((1+beta)*ICBO)")
T1=27
T2=50
format(5)
I_CBO = ICBO * (2^((T2-T1)/10))
I_CBO1=I_CBO*10^6
disp("(b) To find the value of new collector current if temperature rises to 50 C")
disp(I_CBO1,"I''CBO(beta=50)(in uA) = ICBO*(2^((T2-T1)/10)) = ")
format(6)
IC2=(beta*IB)+((1+beta)*I_CBO)
IC3=IC2*10^3
disp("Therefore, the collector current at 50 C is")
disp(IC3,"IC(mA) = (beta*IB) + ((1+beta)*I''CBO) = ")