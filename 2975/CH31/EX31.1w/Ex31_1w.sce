//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 31_1w

clc;clear;
//Given Data

epsilon=8.85*10^-12;            //Value of electric constant (Unit: C^2/N-m^2)
area=200*10^-4;                  //Area of the plates (Unit:m^2)
d=1*10^-3;                      //Distance between the plates (Unit:m)
charge=1*10^-9;                 //Charge in the capacitor (Unit:C)
d_new=2*10^-3;                  //New Distance between the plates (Unit:m)

//Calculation

capacitance=area*epsilon/d;                 //Calculation of the capacitance of the plate (Unit:Farad)
potential_difference=charge/capacitance;    //Calculation of the potential difference between plates (Unit:Volts)

capacitance_new=area*epsilon/d_new;                 //Calculation of new capacitance of the plate (Unit:Farad)
potential_difference_new=charge/capacitance_new;    //Calculation of new potential difference between plates (Unit:Volts)

disp(potential_difference,"The potential difference developed between the plates is (Unit: volts)");
disp(potential_difference_new,"New potential difference developed between the plates when sepration is increased (Unit: volts)");

