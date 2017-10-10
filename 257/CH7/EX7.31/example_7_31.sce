syms k1 k2 s k t
T= s/(s+k1*k2+k1*k)          //solving the block diagram

T1=k1/(s*(s+2*k1))
y=ilaplace(T1,s,t)
disp(y, " y = ")



