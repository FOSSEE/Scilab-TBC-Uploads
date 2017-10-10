//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 31_21w

clc;clear;
//Given Data

capacitance=100*10^-6;          //Capacitance of the capacitor (Unit: Coulomb)
dielectric=5;                   //Dielectric constant (Unit:unitless)
voltage=200;                    //Voltage of power supply(Unit:V)

//Calculation
init_charge=capacitance*voltage;
new_capacitance=capacitance*dielectric;
final_charge=new_capacitance*voltage;

change_charge=final_charge-init_charge;     //Calculation of Extra charge flown through the power supply (Unit:C)
change_charge_milli=change_charge*10^3;     //Changing the charge into milli coulomb (Unit:mC)
work_done=change_charge*voltage;            //Calculating the work done by the supply (Unit:Joules)

init_static_energy=0.5*capacitance*voltage^2;       //Calculating the electrostatic field energy of the capacitor without the dielectric slab(Unit:Joules)
final_static_energy=0.5*new_capacitance*voltage^2;       //Calculating the electrostatic field energy of the capacitor with the dielectric slab(Unit:Joules)
change_static_energy=final_static_energy-init_static_energy;        //Calculating the change in the electrostatic energy of the electric field in the capacitor (Unit:Joules)

disp(change_charge_milli,"The extra charge flown through the power supply is (Unit:mC)");
disp(work_done,"The work done by the supply is (Unit:Joules)");
disp(change_static_energy,"The change in the electrostatic energy of the electric field in the capacitor is (Unit:Joules)");
