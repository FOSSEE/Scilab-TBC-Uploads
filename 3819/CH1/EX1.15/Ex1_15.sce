// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.15


//Given Data Set in the Problem(SI Units)
dist=20/100
u_vertex=120/100
visc=8.5/10
//Assuming u=a*y^2+b*y+c applying all three boundary conditions , we get the y vector and velocity vector as below;
y_vector=[0 0 1;400 20 1;40 1 0]
vel_vector=[0;-120;0]
[constants]=linsolve(y_vector,vel_vector)
//1) Velocity grdient =2ay+b
//For y=0, 10, 20 cm
y=[0,10,20]
du_dy=2*constants(1)*y+constants(2);
ss=visc*du_dy;
printf("The shear stress at y=%d,%d,%d cm are %f,%f,and %fN/m^2",y(1),y(2),y(3),ss(1),ss(2),ss(3));
