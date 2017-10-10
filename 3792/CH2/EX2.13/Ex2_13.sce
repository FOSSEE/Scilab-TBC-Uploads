// Example 2_13
clc;funcprot(0);
// Given data
v_A=800;// km/h
theta_1=45;// degree
theta_2=60;// degree
theta_3=75;// degree

// Calculation
// (I) Graphical.
v_BA=586;// km/h
v_B=717;// km/h
printf("\nv_BA=%3.0f km/h and v_B=%3.0f km/h",v_BA,v_B);
// (II) Trigonometric.
v_B=(sind(theta_2)*v_A)/sind(theta_3);// km/h
printf("\nv_B=%3.0f km/h",v_B);
// (III) Vector Algebra
v_B=[(v_B*cosd(theta_1)),(v_B*sind(theta_1))];// km/h
v_BA=[-(v_BA*cosd(theta_2)),(v_BA*sind(theta_2))];// km/h
function[X]=velocity(y)
    X(1)=(v_A-(y(2)*cosd(theta_2)))-(y(1)*cosd(theta_1));
    X(2)=(y(2)*sind(theta_2))-(y(1)*sind(theta_1));
endfunction
y=[100,100];
z=fsolve(y,velocity);
v_BA=z(1);// km/h
v_B=z(2);// km/h
printf("\nv_AB=%3.0f km/h and v_B=%3.0f km/h",v_BA,v_B);
