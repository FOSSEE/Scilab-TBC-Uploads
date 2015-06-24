//consider the flow same as in example 4.23,but assume boundaary layer is noe completely turbulent.
//datas are taken from example 4.23:
V=120; //flow velocity,m/s
D=1.225;//free stream density,Kg/m^3
x=0.05 ;//length of plate in meter
w=1;//width of plate in meter
u=1.789*10^-5;//Viscosity in kg/(m)(s)
Re=D*V*x/u  //Reynolds Number at trailing edge
Cf=0.074/Re^0.2 //Skin friction drag 
q=D*V^2/2  //dynamic pressure at outer edge of boundary,N/m^2
S=x*w;//area of plate,m^2

