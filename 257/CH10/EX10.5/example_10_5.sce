s=poly(0,'s'); 
omegaR=7

zeta=abs(roots(poly([0.043766 0 -1 0 1],'s',"coeff")))
disp(zeta)
disp("but for zeta>0.7 , Mr does not exist, so neglect higher value")
zeta=0.2141
disp(zeta)

omegaN=omegaR/(sqrt(1-2*(zeta)^2))
disp(omegaN,"omegaN = ")

disp(omegaN*sqrt(1-2*zeta^2 + sqrt(2-4*zeta^2+4*zeta^4))," B.W. = ")

