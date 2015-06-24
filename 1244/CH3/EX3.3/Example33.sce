

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.3 ")

//initial temperature of the sheet in C is given as:
Tinitial = 500;
//thickness of the sheet in m is given as
th = 0.02;
//density in kg/m3 is given for steel as
rho = 8500;
//specific heat in J/kg-K is given as
c = 460;
//thermal conductivity in W/m-K is given as
k = 20;
//The heat transfer coefficient in W/m2-K to the air is given as
h = 80;
//the ambient air temperature in degree C is
Tinfinity = 20;
//Final temperature required to achieve in C is
Tfinal = 250;
//The transient cooling of stainless steel sheet can be modeled as a semi-infinite slab
//because the thickness of the sheet is much smaller than its width and length.
L = th/2; //Length in m
//Finding chart solution
//Biot number shall be
Bi = (h*L)/k;

//Since Bi<0.1 and hence the sheet can be treated as a lumped capacitance.

//To use fig. 2.42 on page 135, we need to calculate the following value:
value = (Tfinal-Tinfinity)/(Tinitial-Tinfinity); //value required

//So, now using fig. 2.42, we have alpha*dt/(L*L)=19
//BY the definition of thermal diffusivity,in SI units we have
alpha = k/(rho*c);
disp("By chart solution, time required in seconds comes out to be")
//time required in seconds
t = ((19*L)*L)/alpha

//Proceeding to the numerical solution
//consider half the sheet thickness,with x=0 being the exposed left face and
//x=L being the sheet center-line

//Using 20 control volumes
N = 21; //Total number of grid points
dx = L/20; //dx in m

//Old temperature array
for N = 1:21
  //Old temp in degree C
  Told(1,N) = Tinitial;
  //New temp in degree C
  Tnew(1,N) = Tinitial;
end;
//Initialisation Time in sec
t = 0;
//Increment of Time in sec
dt = 0.02;
//Condition of looping
while Told(21)>250
  //C1 of governing equation in SI units
  C1 = (alpha*dt)/(dx*dx);
  //C2 of governing equation in SI units
  C2 = ((2*h)*dt)/((rho*c)*dx);
  //C3 of governing equation in SI units
  C3 = 2*C1;
  //New temp in C as given by the equations of finite difference method
  Tnew = mtlb_i(Tnew,1,Told(1)+C2*(Tinfinity-Told(1))+C3*(Told(2)-Told(1)));
  Tnew = mtlb_i(Tnew,21,Told(21)+C3*(Told(20)-Told(21)));
  for N = 2:20
    //New temp in C as given by the equations of finite difference method
    Tnew = mtlb_i(Tnew,N,Told(N)+C1*(Told(N+1)-2*Told(N)+Told(N-1)));
  end;
  for N = 1:21
    //Assigning old temp=new temp
    Told = mtlb_i(Told,N,Tnew(N));
  end;
  //Modified time for new loop
  t = t+dt;
end;
// L.67: No simple equivalent, so mtlb_fprintf() is called.
mtlb_fprintf("As per numerical solution time comes out to be %5.2f seconds\n",t)

disp("This time is about 1.5% less than the chart solution")
