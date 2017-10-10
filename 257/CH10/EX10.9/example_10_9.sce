s=%s
//G=k/(s*(s+a)) and T=G/(1+G)
Mr=1.04
omegaR=11.55

disp("for zeta>0.7 , Mr does not exist, so neglect higher value")
zeta=0.6021
disp(zeta)

omegaN=omegaR/(sqrt(1-2*(zeta)^2))
disp(omegaN,"omegaN = ")


k=omegaN^2
disp(k,"k=")
disp(2*zeta*omegaN," a = ")
disp(omegaN*sqrt(1-2*zeta^2 + sqrt(2-4*zeta^2+4*zeta^4))," B.W. = ")
disp(4/(zeta*omegaN)," Ts = ")