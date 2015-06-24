//example4.12
clc
disp("f_H=1/(2*pi*R_eq*C_eq)")
disp("and f_H''=2(f_H)")
disp("1/(2*pi*R_eq*C_eq) = 2/(2*pi*R_eq*C_eq)")
disp("R_eq'' = R_eq/2")
disp("R_eq=(r_b''e)parallel to (r_bb''+R_s)")
disp("= (r_b''e)=1000 ohm")
disp("Therefore  R_eq'' =500 ohm")
disp("Therefore  500=((r_b''e)*(r_bb''+R_s))/((r_b''e)+(r_bb'')+R_s)")
disp(" = 1000(100+R_s)/(1000+100+R_s)")
r=(4.5*10^5)/500
disp(r,"R_s(in ohms)= ")
