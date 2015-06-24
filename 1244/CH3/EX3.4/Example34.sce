


// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 3 Example # 3.4 ")

//Dimensions of the cross section in inches
l = 1;
b = 1;

//Dividing domain such that there are four nodes in x and y direction
dx = 1/3; //dx in inches
dy = 1/3; //dy in inches

//Assigning Temperature in C for top and bottom surface
for i = 1:4
  T(1,i) = 0;
  T(4,i) = 0;
end;
//Assigning Temperature in C for side surfaces
for j = 1:4
  T(j,1) = 50;
  T(j,4) = 100;
end;
//Assigning Temperature in C for interior nodes
for i = 2:3
  for j = 2:3
    T(i,j) = 0;
  end;
end;
//Defining looping parameter
step = 0;
for step = 0:50
  //Using governing equations of finite difference
  T(3,2) = 0.25*(50+0+T(2,2)+T(3,3));
  T(2,2) = 0.25*(50+0+T(3,2)+T(2,3));
  T(2,3) = 0.25*(100+0+T(3,2)+T(2,3));
  T(3,3) = 0.25*(100+0+T(2,2)+T(3,3));
end;

//disp("At steady state, Final temperature of the cross section in C would be")
//New temp distribution in degree C
printf('Temperature T(2,2) in degree C is %5.2f\n',T(2,2))
printf('Temperature T(2,3) in degree C is %5.2f\n',T(3,2))
printf('Temperature T(3,2) in degree C is %5.2f\n',T(2,3))
printf('Temperature T(3,3) in degree C is %5.2f',T(3,3))

