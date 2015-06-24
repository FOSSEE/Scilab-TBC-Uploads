

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.6 ")

//Thermal diffusivity in m2/s
alpha = 0.000008;
//%Thermal conductivity of alloy bus bar in W/m-K is given as
k = 20;
//density*specific heat product in SI units
pc = k/alpha;

//dimensions of the bar in m is given as
L = 0.1;//Length in m
b = 0.05;//Width in m
d = 0.01;//Thickness in m

//Heat generation rate in W/m3 is given as
qg = 10^6;

//Assigning temperature on the left and right hand side
for i = 1:6 //i is the looping parameter
  //Old temp. in degree C
  Told(i,1) = 40;
  Told(i,11) = 10;
  //New temp. in degree C
  Tnew(i,1) = 40;
  Tnew(i,11) = 10;
end;

//Assigning a guess temperature of 20C to all nodes
for i = 1:6//i is the looping parameter
  for j = 1:11//j is the looping parameter
    //Guess temp. in degree C
    Told(i,j) = 20;
    Tnew(i,j) = 20;
  end;
end;

//Initialising time
m = 0;

//For top edge, heat transfer coefficient in W/m2K and ambient temperature
//in C are
h = 75;
Tinfinity = 0;

//We are taking a total of 11 nodes in the direction of length and 6 nodes
//in the direction of width
dx = 0.01; //dx in m
dy = 0.01; //dy in m

//Largest permissible time step in sec is
tmax = 1/((2*alpha)*(1/(dx*dx)+1/(dy*dy)));
//Rounding it off to nearest integer
t = 3; //timestep in seconds

//Condition for convergence
while abs(Tnew(5,6)-Told(5,6))<0.0001

  //Equation for all interior nodes
  for i = 2:5
    for j = 2:10
      //New temp. in degree C
      Tnew(i,j) = (Told(i,j)+(alpha*t)*((Tnew(i+1,j)+Tnew(i-1,j))/(dx*dx)+(Tnew(i,j+1)+Tnew(i,j-1))/(dy*dy)+qg/k))/(1+((2*alpha)*t)*(1/(dx*dx)+1/(dy*dy)));
    end;
  end;

  //Equation for top wall
  for j = 2:10
    //New temp. in degree C
    Tnew(1,j) = (Told(1,j)+((2*t)/((dx*dx)*pc))*(k*((Tnew(1,j+1)+Tnew(1,j-1))/2+Tnew(2,j)))+((qg*dx)*dx)/2+(h*dx)*Tinfinity)/(1+((2*t)/((dx*dx)*pc))*(2*k+h*dx));
  end;

  //Equation for bottom wall
  for j = 2:10
    //New temp. in degree C
    Tnew(6,j) = (Told(6,j)+((2*t)/((dx*dx)*pc))*(k*((Tnew(6,j+1)+Tnew(6,j-1))/2+Tnew(5,j)))+((qg*dx)*dx)/2)/(1+((2*t)/((dx*dx)*pc))*(2*k));
  end;
  //New time in sec
  m = m+t;
end;


disp("Time required to reach steady state using deltaT=0.3sec is 1140 seconds")
