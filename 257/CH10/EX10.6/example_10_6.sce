Mr=1.1
omegaR=11.2

zeta=abs(roots(poly([0.2066 0 -1 0 1],'s',"coeff")))
disp(zeta)
disp("but for zeta>0.7 , Mr does not exist, so neglect higher value")
zeta=0.54
disp(zeta)

omegaN=omegaR/(sqrt(1-2*(zeta)^2))
disp(omegaN,"omegaN = ")

TF=omegaN^2/(poly([0 2*zeta*omegaN 1],'s',"coeff"))
disp(TF," TF = ")