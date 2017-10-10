// SAMPLE PROBLEM 7/3
clc;funcprot(0);
// Given data
omega_1=6;// rad/s
r_x=50;// mm
r_y=100;// mm
r_z=100;// mm


// Calculation
// v_A=r_x*omega_2;
v_B=r_y*omega_1;// (i) mm/s
// v_A=v_B+(omega_n*r_A/B);
// Expanding the determinant and equating the coefficients of the i, j, k terms give
function[X]=velocity(y)
    X(1)=-6-(y(2)-y(3));
    X(2)=y(4)-((-2*y(1))+y(3));
    X(3)=0-((2*y(1))-y(2));
    X(4)=((r_x*y(1))+(r_y*y(2))+(r_z*y(3)));
endfunction
y=[1 1 1 1];
z=fsolve(y,velocity);
omega_nx=z(1);// rad/s
omega_ny=z(2);// rad/s
omega_nz=z(3);// rad/s
omega_2=z(4);// rad/s
omega_n=[omega_nx,omega_ny,omega_nz];// rad/s
omega_n=norm(omega_n);// rad/s
printf("\nThe angular velocity of crank DA,omega_2=%1.0f rad/s \nThe angular velocity of link AB,omega_n=%1.3f rad/s",omega_2,omega_n);
