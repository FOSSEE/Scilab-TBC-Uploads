L=2

VL_0minus=0 //steady state
disp(VL_0minus)

i_0minus=1
i_0plus=i_0minus
VL_0plus=12-4*i_0plus
disp(VL_0plus)

di_by_dt_0plus=VL_0plus/L
disp(di_by_dt_0plus)
