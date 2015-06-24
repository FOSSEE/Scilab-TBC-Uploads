
FL=0.4*exp(-%i*30*%pi/180)
Fin=0.2*exp(%i*45*%pi/180)
Z_L=(1+FL)/(1-FL)
Z_in=(1+Fin)/(1-Fin)
Y_in=(1-Fin)/(1+Fin)
disp(Z_L,"Z_L=")
disp(Z_in,"Z_in=")
disp(Y_in,"Y_in=")
//Y_in=(1+%i*Z_L*tan(Bl))/(Z_L+%i*tan(Bl))
Y_in=1/Z_in
disp(Y_in,"Y_in=")