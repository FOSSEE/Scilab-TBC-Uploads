//final  value thereom
z=%z
sys=syslin('c',0.792*z^2/((z-1)*(z^2-0.416*z+0.208)))
syms z
l=limit(sys*(1-z^-1),z,1)
disp(l,"limit as k approaches infinity=")