// scilab Code Exa 18.18 Ljungstrom turbine 3600 rpm

d1=0.92; // inner diameter of the impeller in m
d2=1; // outer diameter of the impeller in m
N=3.6e3; // rotor Speed in RPM
aplha_1=20; // blade exit angle in degree
p2=0.1; //exit Pressure of steam in bar
x2=0.88; // dryness fraction at exit
n_st=0.83; // stage Efficiency
u1=%pi*d1*N/60;
u2=%pi*d2*N/60;

//part(a)power developed
sigma=cosd(aplha_1)/2;
w_st=u1^2+u2^2;
disp("kW/(kg/s)",w_st*1e-3,"(a)power developed per unit flow rate is")

//part(b) isentropic enthalpy drop
delh_s=w_st/n_st;
disp("kJ/kg",delh_s*1e-3,"(b)isentropic enthalpy drop is")

// part(c)steam conditions at entry
disp("(c)steam conditions at entry are:")
p1=0.18; // in bar
disp("bar",p1,"pressure:")
x1=0.9;
disp(x1,"the dryness fraction is:")
