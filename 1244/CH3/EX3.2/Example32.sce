

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.2 ")

// we have to determine minimum depth xm at which a water main must be buried to avoid freezing

//Initial temperature of soil in C is given as:
Ts = 20;
// Under the worst conditions anticipated it would be subjected to a surface
// temperature of -15C for a period of 60 days
//Max temperature in degree C
Tmax = -15;
//Time period in days
dt = 60;
//We will use the following properties for soil (at 300 K)
rho = 2050;//density in kg/m3
k = 0.52;//thermal conductivity in W/m-K
c = 1840;//specific heat in J/kg-K
alpha = 0.138*(10^(-6));//diffusivity in m2/sec

//Fourier number is defined as:
//Fo=dt*alpha/(dx*dx);

//Let us select a maximum depth of 6 m
//First, let us choose , giving dx=1.2m

dx = 1.2; //dx in m
dt = (30*24)*3600;//Days converted in seconds

//Temperature array for the old temperature in degree C
Tnew = [-15,20,20,20,20,20];

//Temperature array for the new temperature in degree C
Told = [-15,20,20,20,20,20];
//Fourier number is defined as:
Fo = (dt*alpha)/(dx*dx);

//Using eq. 3.15
//Initialsing timestep for looping
timestep = 0;
for timestep = 0:100
  for N = 2:4
    //New temp in degree C
    Tnew(N) = Told(N)+Fo*(Told(N+1)-2*Told(N)+Told(N-1));
    //Incrementing timestep
    timestep = timestep+1;
  end;
end;
disp("With dx=1.2m, we have the following distribution")
//New temp in degree C
Tnew

disp("Depth in m at which temperature would be 0 degree C would be")
//Depth in m 
xm = (0-Tnew(1)/(Tnew(2)-Tnew(1)))*dx
