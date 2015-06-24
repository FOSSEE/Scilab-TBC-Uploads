//consider the flow of air over a small flat plate that is 5 cm long in flow direction and 1m wide.free stream conditions corresponds to standard sea level condition
V=120; //flow velocity,m/s
D=1.225;//free stream density,Kg/m^3
x=0.05 ;//length of plate in meter
w=1;//width of plate in meter
u=1.789*10^-5;//Viscosity in kg/(m)(s)
//reynolds no at 1 cm:
Re1=D*V*.01/u
//reynolds no at 5 cm:
Re2=D*V*.05/u
Cf1=0.664/Re1^0.5 //Skin friction drag coefficient at 1 cm
Cf2=0.664/Re2^0.5 //Skin friction drag coefficient at 5 cm
q=D*V^2/2  //dynamic pressure at outer edge of boundary,N/m^2

