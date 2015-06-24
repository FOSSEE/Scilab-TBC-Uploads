clc;
h3=2716.4;//kJ/kg
hf2=640;
h_fg2=2109;
x2=(h3-hf2)/(h_fg2);

flow_rate=9;
m_w2=(1-x2)*(flow_rate);
mass_water=0.5;
m_w1=m_w2+mass_water

flow_rate_dry=mass_water+flow_rate-m_w1;
x1=flow_rate_dry/(mass_water+flow_rate);
disp("fraction is:");
disp(x1)
