clear;
clc;
printf("\t\t\tExample Number 5.8\n\n\n");
// drag force on a flat plate  
// illustration5.8
// solution

// data is used from example 5.4 
// we use equation (5-56) to compute the friction coefficient and then calculate the drag force .
// an average friction coefficient is desired, so st_bar*pr^(2/3) = Cf_bar/2
p = 101325;// [Pa] pressure of air
x = 0.4;// [m] drag force is computed on first 0.4 m of the plate 
R = 287;// []
Tf = 316.5;// [K]
u = 2;// [m/s] air velocity
Cp = 1006;// [J/kg K]
Pr = 0.7;// prandtl no.
rho = p/(R*Tf);// [kg/cubic meter] density at 316.5 K 
h_bar = 8.698;// [W/square meter K]  heat transfer coefficient
// for the 0.4m length
st_bar = h_bar/(rho*Cp*u);
// then from equation (5-56)
Cf_bar = st_bar*Pr^(2/3)*2;
// the average shear stress at the wall is computed from equation(5-52)
tau_w_bar = Cf_bar*rho*u^(2)/2;// [N/square meter]
A = x*1;// [square meter] area per unit length 
// the drag force is the product of this shear stress and the area,
D = tau_w_bar*A;// [N] 
printf("Drag force exerted on the first 0.4 m of the plate is %f mN",D*1000);


