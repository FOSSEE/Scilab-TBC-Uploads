// scilab Code Exa 4.1 Calculations on Steam Turbine Plant 

p1=25; // Turbine Inlet Pressure in bar
p2=0.065;  // Condenser Pressure in bar
n_B=0.82; // Boiler efficiency
delp=p1-p2;
v_w=0.001; // Specific Volume at condenser Pressure in m3/kg

h1=160.6; // from steam tables at p1=0.065 bar
h2=h1+(delp*100*v_w);

//part(a) Determining exact and approximate Rankine efficiency of the plant
h3=2800; // from steam table vapour enthalpy at 25 bar
h4=1930; // from steam table
n_rankine_ex=(h3-h4-(h2-h1))/(h3-h1-(h2-h1));
disp ("%",n_rankine_ex*100,"(a)(i) Exact Rankine efficiency is")

n_rankine_app=(h3-h4)/(h3-h1);
disp ("%",n_rankine_app*100," (a)(ii)Approximate Rankine efficiency is")

//part(b) Determining thermal and relative efficiencies of the plant
n_t=0.78; // Turbine Efficiency
CV=26.3*10e2; // Calorific Value of fuel in kJ/kg;
n_th=(n_t*(h3-h4))/(h3-h1);
disp("%",n_th*100,"(b)(i)thermal efficiency of the plant is")
n_rel=n_th/n_rankine_app;
disp("%",n_rel*100,"(ii)relative efficiency of the plant is")

//part(c) Determining Overall efficiency of the plant
n_o=n_th*n_B;
disp("%",n_o*100,"(c)overall efficiency of the plant is")

//part(d) Turbine and Overall heat rates
hr_t=3600/n_th; 
disp("kJ/kWh",hr_t,"(d)(i)Turbine Heat Rate is")
hr_o=3600/n_o; 
disp("kJ/kWh",hr_o,"(d)(ii)overall Heat Rate is")

//part(e) Steam Consumption per kWh
m_s=3600/(n_t*(h3-h4));
disp("kg/kWh" ,m_s,"(e)Steam Consumption is")

//part(f) Fuel Consumption per kWh
m_f=3600/(CV*n_o);
disp("kg/kWh" ,m_f,"(f)Fuel Consumption is")
