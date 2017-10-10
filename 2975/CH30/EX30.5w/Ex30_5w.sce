//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 30_5w

clc;clear;
//Given Data

linear_charge_density=4*10^-4;      //Value of linear charge density (Unit:C/m)
dipole_distance=2*10^-3;            //Distance between dipole (Unit:m)
dipole_charge=2*10^-8;              //Charge on the electric dipole (Unit: C)
distance=2*10^-2;                   //Distance between dipole and line charge (Unit:m)
k=9*10^9;                           //Value of the coulomb constant (Unit: N-m^2/C^2)

//Calculation

electric_field_negative=2*k*linear_charge_density/distance;                     //Calculation of the electric field on the negative charge (Unit:N/C)
electric_field_positive=2*k*linear_charge_density/(distance+dipole_distance);   //Calculation of the electric field on the positive charge (Unit:N/C)
force_negative=dipole_charge*electric_field_negative;                           //Calculation of force on negative charge of the dipole(Unit:N)
force_positive=dipole_charge*electric_field_positive;                           //Calculation of force on positive charge of the dipole(Unit:N)
net_force=force_negative-force_positive;                                        //Calculation of net force on the dipole (Unit:N)
disp(net_force,"The net force on the dipole towards the line of charge is (Unit:N)");

