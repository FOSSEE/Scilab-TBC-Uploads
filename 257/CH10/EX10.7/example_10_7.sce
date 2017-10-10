s=%s

//G=k/(s*(s*tau+1)) and T=G/(1+G)
omegaN=12

zeta=roots(poly([0.22225 0 -1 0 1],'s',"coeff"))
disp("but for zeta>0.7 , Mr does not exist, so neglect higher value")
zeta=0.578
disp(zeta)

tau=1/(2*sqrt(144)*zeta) 
disp(tau,"tau = ")
k=144*tau;disp(k,"k = ")

disp(omegaN*sqrt(1-2*zeta^2 + sqrt(2-4*zeta^2+4*zeta^4))," B.W. = ")