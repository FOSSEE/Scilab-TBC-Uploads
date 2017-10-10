//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 31_2w

clc;clear;
//Given Data

k=9*10^9;                           //Value of the coulomb constant (Unit: N-m^2/C^2)
capacitance=50*10^-12;              //Sphere capaciance(Unit: Farad)
potential=10^4;                      //Required potential difference (Unit:volt)

//Calculation

radius=k*capacitance;               //Calculation of the radius of the sphere (Unit:m)
radius_cm=radius*100;               //Changing the radius into cm (Unit:cm)
charge=capacitance*potential;       //Calculation of the charge (Unit:C)
charge_micro=charge*10^6;           //Changing the charge in micro coulomb (Unit : micro Coulomb)


disp(radius_cm,"The radius of the isolated sphere is(Unit:cm)");
disp(charge_micro,"Charge on the sphere is (Unit:micro Coulomb)");

