//Example 11.1
//page no. 478
//a-Calculate Boundary layer thickness at x=0.5 m
//b-Calculate local drag coeff at x=0.5 m
//c-Force req to hold the plate in position
//d-shear stress at a plane,distant t/2 from the surface at x = 0.5 m
//Variable declaration

v =1 //m/s
//temprature
T=25            // degree celcius
//length of plate,l=1m
l=1             //m
//width of plate,w=0.5m
w=0.5 //m
//angle of incidence,theta=0 degree
theta=0         //degree

//Calculation
//for water at 25 degree celcius ,momentum diffusivity,
MD=8.63*(10^-7)  // m^2/s
//local Reynold no.
x=0.5 //m
Re=x*v/MD 
//from Eq. 11.39,the boundary layer thickness is
t=5*x/(Re^0.5)


//Results
printf ("i) Boundary layer thickness is%f  m\n",t)

//local drag coefficient
//CD=local drag force per unit area (F)/kinetic energy per unit volume(KE)
//F=0.332*rho*v^2*Re^0.5 and KE= 0.5*rho*v^2
CD=0.332*v^2*(Re^-0.5)/(0.5)*v^2

printf("Local drag coefficient is %f \n",CD)

//From eq 11.44, the drag force acting on one side of the plate is
//kinetic viscocity
mu=8.6*(10^-4)
fd=0.664*mu*v*(l*v/MD)^0.5*w
//the total force acting on both sides of the plate

tfd=2*fd
printf("total drag force is %f  N \n",tfd)

//shear stress at any point in the boundary layer
//at a point in the boundary layer,
x=0.5 //m
y=t/2
// n=blasius dimensionless variable
n=y/(MD*x/v)^0.5
//From table 11.1, at n=2.5,f"(n)=0.218
//shear stress= tau
fn=0.218 //f"(n)=fn
tau=(mu*v*(v/(MD*x))^0.5)*fn
printf("Shear stress is %f N/m^2",tau)
