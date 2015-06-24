

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.5 ")

//Thermal conductivity of alloy bus bar in W/m-K is given as
k = 20;
//Heat generation rate in W/m3 is given as
qg = 10^6;
//dimensions of the bar in m is given as
L = 0.1;//Length in m
b = 0.05;//Width in m
d = 0.01;//Thickness in m

//For top edge, heat transfer coefficient in W/m2K and ambient temperature
//in C are
h = 75;
Tinfinity = 0;
//We are taking a total of 11 nodes in the direction of length and 6 nodes
//in the direction of width
dx = 0.01; //dx in m
dy = 0.01; //dy in m
//Assigning a guess temperature of 25C to all nodes
for i = 1:6
  for j = 1:11
    //Old temp. in degree C
    Told(i,j) = 25;
  end;
end;

//Assigning temperature on the left and right hand side
for i = 1:6
  //Old temp. in degree C
  Told(i,1) = 40;
  Told(i,11) = 10;
  //New temp. in degree C
  Tnew(i,1) = 40;
  Tnew(i,11) = 10;
end;
//Intitalisation of looping parameter
p = 0;
//Iteration to find temperature distribution
while p<500
  //Equation for all interior nodes
  for i = 2:5
    for j = 2:10
      //New temp. in degree C
      Tnew(i,j) = 0.25*(Told(i-1,j)+Told(i+1,j)+Told(i,j-1)+Told(i,j+1)+((qg*dx)*dx)/k);
    end;
  end;

  //Equation for top wall
  for j = 2:10
    //New temp. in degree C
    Tnew(1,j) = (h*Tinfinity+(qg*dx)/2+(k*(0.5*(Told(1,j-1)+Told(1,j+1))+Told(2,j)))/dx)/(h+(2*k)/dx);
  end;

  //Equation for bottom wall
  for j = 2:10
    //New temp. in degree C
    Tnew(6,j) = 0.25*(Told(6,j-1)+Told(6,j+1))+0.5*Told(5,j)+((qg*dx)*dx)/(4*k);
  end;
  for i = 1:6
    for j = 1:11
      //Assigning Old Temp=New Temp
      Told(i,j) = Tnew(i,j);
    end;
  end;
  //New looping parameter incremented
  p = p+1;
end;
disp("The temperature distribution in the bar in C is the following")
//Old temp. in degree C
Told

//Finding maximum temperature
Tmax = Told(1,1);
for i = 1:6
  for j = 1:11
    if Told(i,j)>Tmax then
      Tmax = Told(i,j);
    else
      Tmax = Tmax;
    end;
  end;
end;
disp("The maximum temperature in C in the alloy bus bar is")
//maximum temperature in C
Tmax

//Finding heat transfer rate
dz = 0.01; //dz in m
//Defining areas
for i = 2:10
  A(1,i) = dx*dz; //Area in m2
end;
A = mtlb_i(A,1,(dx*dz)/2);
A = mtlb_i(A,11,A(1));
for i = 1:11
  //heat transfer rate in W
  q(1,i) = (h*A(i))*(Tnew(1,i)-Tinfinity);
end;
disp("The heat transfer rate from the top edge in W is given by")
//heat transfer rate in W
q
