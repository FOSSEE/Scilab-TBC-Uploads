s=%s;
G=100/(s*(s+8))
T=G/(1+G)
disp(T,"T = ")

//compare denominator with s^2+2*zeta*omegaN + omegaN^2
omegaN=10
zeta=0.4;
disp(1/(2*zeta*sqrt((1-zeta^2)))," Mr = ")
disp(omegaN*sqrt(1-2*zeta^2)," omegaN = ")

