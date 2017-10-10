//given characteristic equation s^3 + 9*s^2 +k*s + k
s=%s
sys=syslin('c',(s+1)*k/((s+9)*(s^2)))
evans(sys)
