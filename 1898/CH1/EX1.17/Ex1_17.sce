clear all; clc;

disp("Scilab Code Ex 1.17 : ")

//Given:
d_ac= 20; //mm
area_ac = %pi*(d_ac/2)^2; //Area = (%pi\4)d^2
area_al = 1800; //mm^2
d_pins = 18; //mm
area_pins = %pi*(d_pins/2)^2;
st_fail_stress = 680; //MPa
al_fail_stress = 70; //MPa
shear_fail_pin = 900; //MPa
fos = 2; //Factor of safety
l_ab = 2; //m
l_ap = 0.75; //m


st_allow= st_fail_stress /fos; //MPa
al_allow = al_fail_stress/fos; //MPa
pin_allow_shear = shear_fail_pin/fos; //MPa

//Rod AC
f_ac = (st_allow*area_ac)/1000;
P1 = ((f_ac*l_ab)/(l_ab-l_ap));

//Block B
f_b =(al_allow*area_al)/1000;
P2 = ((f_b*l_ab)/l_ap);

//Pin A or C:
V = (pin_allow_shear*area_pins)/1000;
P3 = (V*l_ab)/(l_ab-l_ap);

if(P1<P2 & P1<P3)
    big = P1;
else if(P2<P1 & P2<P3)
    big = P2;
else big = P3;
end

//Displaying Results:

printf("\n\nThe load allowed on rod AC                      = %.1f kN",round(P1));
printf("\nThe load allowed on block B                     = %.1f kN",P2);
printf("\nThe load allowed on pins A or C                 = %.1f kN",P3);
printf("\nThe largest load that can be applied to the bar = %.1f kN ",big);

//----------------------------------------------------------------------------------END----------------------------------------------------------------------------


