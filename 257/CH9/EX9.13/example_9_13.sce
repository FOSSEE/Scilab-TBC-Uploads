//angles of departure
sys=syslin('c',k*(s+2)/(s*(s+4)*(s^2+2*s+2)))
evans(sys)

theta=180-(135+90+18.43-45)
disp(theta)