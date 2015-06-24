clc;
// (i).Irreversibility in Turbine
p1=9; // Steam pressure at turbine inlet in MPa
T1=450; // Steam temperature at turbine inlet in degree celcius
p2=50; // Steam pressure at turbine outlet in MPa
x2=0.95; // Quality of steam 
p0=100; // Pressure of Surroundings in kPa
T0=300; // temperature of Surroundings in kelvin
q=-10; // Heat loss in kJ/kg
// (a).Decrease in availability
// from steam table
h1=3256.6; h2=2415.4;// specific enthalpy in kJ/kg 
s1=6.4844; s2=6.944; // specific entropy in kJ/kg K
d_AE=(h1-h2)-(T0*(s1-s2)); // Decrease in availability
disp ("kJ/kg",d_AE,"(a).Decrease in availability =","(i).Irreversibility in turbine");
// (b).Maxximum work output
wrev=d_AE; //Maxximum work output
disp ("kJ/kg",wrev,"(b).Maxximum work output =");
// (c).Actual work output 
w=(h1-h2)+q; // From SSSF energy equation
disp ("kJ/kg",w,"(c).Actual work output  = ");
// (d).Irreversibility
I=wrev-w; //Irreversibility
disp ("kJ/kg",I,"(d).Irreversibility = ");
// (ii).Ammonia compressor
T1=-10; // Temperature at inlet in degree celcius
p2=1.554; // Pressure at outlet in MPa
T2=140; // Temperature at outlet in degree celcius
T0=298; // temperature of Surroundings in kelvin
//from ammonia tables 
h1=1433; h2=1752;// specific enthalpy in kJ/kg 
s1=5.477; s2=5.655; // specific entropy in kJ/kg K
wactual=-(h2-h1); // Actual work
wmin=-((h2-h1)-(T0*(s2-s1)));// mimimum work
I=wmin-wactual;// Irreversibility
disp ("kJ/kg",I,"Irreversibility =","kJ/kg",wmin,"Minimum work =","kJ/kg",wactual,"Actual work = ","(ii).Ammonia compressor");
