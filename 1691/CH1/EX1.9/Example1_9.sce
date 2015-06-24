//Example 1.9
clc
disp("The voltage gain with feedback can be given as")
avf=4000/(1+(4000*0.05))
format(5)
disp(avf,"A_vf = A_v / 1+A_v*beta =")
disp("In a voltage series feedback input resistance with feedback is given as")
rif=2*(1+(0.05*4000))
disp(rif,"R_if(in k-ohm) = R_i(1+beta*A_v) =")
rof=(60*10^3)/(1+(0.05*4000))
format(6)
disp("In a voltage series feedback output resistance with feedback is given as")
disp(rof,"R_of(in ohm) = Ro / 1+beta*A_v =")
