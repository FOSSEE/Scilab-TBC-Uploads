//Exa 8.6
clc;
clear;
close;
//given data
t_hi=83;// in degree C
t_ho=45;// in degree C
t_ci=25;// in degree C
Mh=5;// in kg/min
Mc=9;// in kg/min
Cph=4.18; // in kJ/kg K
Cpc=2.85;//  in kJ/kg K
// Energy balance Mh*Cph*(t_hi-t_ho) = Mc*Cpc*(t_co-t_ci) 
t_co= Mh*Cph*(t_hi-t_ho)/(Mc*Cpc)+t_ci;// in degree C
disp(t_co,"t_co in degree C");
if(t_co>t_ho)
    
   disp("since t_co > t_ho, hence counter flow arrangment will be suitable")
end
