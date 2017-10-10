// SAMPLE PROBLEM 7/4
clc;funcprot(0);
// Given data
// From sample problem 7/3
omega_1=6;// rad/s
omega_2=6;// rad/s
r_x=50;// mm
r_y=100;// mm
r_z=100;// mm
omega_n=2*sqrt(5);// rad/s

// Calculation
r_AB=[r_x,r_y,r_z];// mm
// a_A=[r_x*omega_2^2]i+[r_x*omegadot]j;
// a_B=[r_y*omega_1^2]k+[0]i;
omegadot=(omega_n)^2*(r_AB);// rad/s^2
// omegadot*r_A/B=(100*omegadot_ny-100*omegadot_nz)i+(50*omegadot_nz-100*omegadot_nx)j+(100*omegadot_nx-50omegadot_ny)k
function[X]=velocity(y)
    X(1)=28-(y(2)-y(3));
    X(2)=(y(4)+40)-((-2*y(1))+y(3));
    X(3)=-32-((2*y(1))-y(2));
    X(4)=((2*y(1))+(4*y(2))+(4*y(3)));
endfunction
y=[1 10 10 10];
z=fsolve(y,velocity);
omegadot_nx=z(1);// rad/s^2
omegadot_ny=z(2);// rad/s^2
omegadot_nz=z(3);// rad/s^2
omegadot_2=z(4);// rad/s^2
omegadot_n=[omegadot_nx,omegadot_ny,omegadot_nz];// rad/s^2
omegadot_n=norm(omegadot_n);// rad/s^2
printf("\nThe angular acceleration of crank AD,omegadot_2=%2.0f rad/s \nThe angular acceleration of link AB,omegadot_n=%2.2f rad/s",omegadot_2,omegadot_n);

