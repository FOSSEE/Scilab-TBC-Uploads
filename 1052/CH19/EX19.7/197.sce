clc; 
//Example 19.7
//page no 258
printf("Example 19.7 page no 258\n\n");
//an  orifice meter is equipped with flange top is installed to measure the flow rate of air in a circular duct
D1=0.25//diameter of circular duct,m
D2=0.19//orifice diamter,m
v2=4/(%pi*D2^2)//velocity through orifice
printf("\n velocity through orifice v2=%f m/s",v2);
C_o=1// assuming orifice discharge coefficient
rho=1.23//density of air,kg/m^3
P=rho*v2^2*[1-(D2^4/D1^4)]/2//pressure 
printf("\n pressure P=%f Pa",P);
meu=1.8e-5// absolute viscosity
R_e=rho*v2*D2/(meu)//reynolds no.
printf("\n Reynolds no. R_e=%f ",R_e);
C_ac=0.62//actual discharge cefficient,from fig.19.8
P_ac=P/(C_ac)^2//actual pressure drop 
P_rec=14*(D2/D1) + 80*((D2/D1)^2)//equation for percentage pressure recovery
P_loss=100-P_rec//precentage pressure loss
P_l=round((P_loss/100)*P_ac)//actual pressure  drop after recovery
printf("\n actual pressure drop P_l=%f Pa",P_l);

