clc;
sensible_heat=18000;//W
latent_heat=3600;//W
total_heat=sensible_heat+latent_heat;
w4=0.0089;
w1=0.0075;
wA=w4-(w4-w1)/0.8;

h1=33.9;//kJ/kg
h2=40.2;//kJ/kg

mn1=total_heat/(h2-h1);
mass_flow_rate=mn1*(1+w1);
disp("mass flow rate of supply air is:");
disp("kg/s",mass_flow_rate/1000);

//part II
humidity=0.00745;
h4=46.2;//kJ/kg
h5=31.1;//kJ/kg
cooling_load=mn1*(h4-h5);
disp("cooling load on washer is:");
disp("kW",cooling_load/1000);

//part III
h6=33.9;//kJ/kg
heat_load=mn1*(h6-h5);
disp("heating load is:");
disp("kw",heat_load/1000)
