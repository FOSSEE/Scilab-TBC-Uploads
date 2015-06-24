//repeatation of example 4.24,expect boundary layer is completely turbulent.
//datas taken from example 4.24:
V=120; //flow velocity,m/s
D=1.225;//free stream density,Kg/m^3
x=0.05 ;//length of plate in meter
w=1;//width of plate in meter
u=1.789*10^-5;//Viscosity in kg/(m)(s)
//reynolds no at 1 cm:
Re1=D*V*.01/u
//reynolds no at 5 cm:
Re2=D*V*.05/u
Cf1=0.0592/Re1^0.2 //Skin friction drag coefficient at 1 cm
Cf2=0.0592/Re2^0.2 //Skin friction drag coefficient at 5 cm
q=D*V^2/2  //dynamic pressure at outer edge of boundary,N/m^2

