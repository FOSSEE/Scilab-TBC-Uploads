clc;
//Example 26.7
//page no 393
printf("Example 26.7 page no 393\n\n");
//refer to example 26.6
D=4//diameter of bed ,ft
d_p=0.00137//particle diameter ,ft 
rho_s=84//coal particle density ,lb/ft^3
rho_f=55//oil density,lb/ft^3
meu_f=3.13e-4//viscosity of oil
e_mf=0.38//void fraction
L_mf=8//bed height at minimum fluidization,ft
L_f=10//bed height,ft
e=1-L_mf*(1-e_mf)/L_f//bed voidage
g=32.174//grav acc
v_s=(d_p^2)*g*(e^3)*(rho_s-rho_f)/(150*meu_f*(1-e)) //superficial velocity
printf("\n superficial velocity v_s=%f ft/s",v_s);
q=(%pi/4)*D^2*v_s//volumetric flow rate
printf("\n vol. floe rate q=%f ft^3/s",q);
//check on the laminar flow assumption
meu_f=0.01
R_e=d_p*v_s*rho_f/(meu_f*(1-e))
printf("\n reynolds no R_e=%f",R_e);
printf("\n since R_e is less than 10 ,flow is laminar");
