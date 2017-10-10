//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 27_2w

clc;clear;
//Given Data

r=8.3;      //Gas constant (Unit: J/mol-K)
volume=0.0083;      //Volume of the gas (Unit: m^3)
temperature=300;    //Temperature of the gas (Unit: Kelvin)
pressure=1.6*10^6;  //Pressure of the gas (Unit: N/m^2)
change_q=2.49*10^4; //Change in heat energy (Unit: Joules)

//calculation
Cp=2.5*r;   //Calculation of Cp value   (Unit : J/mol-K)
Cv=Cp-r;    //Calculation of Cv value   (Unit : J/mol-K)
mole=pressure*volume/(r*temperature);   //Calculation of the mole of gas (Unit:mole)
molenew=round(mole*10^1)/10^1;          //Calculation of the mole of the gas by rounding it off(Unit:mole) 
change_temp=change_q/(molenew*Cv);      //Calculation of change in temperature (Unit:Kelvin)
new_temp=change_temp+temperature;       //Calculation of new temperature (Unit:Kelvin)
new_temp1=round(new_temp);              //Calculation of new temperature and rounding it off(Unit:Kelvin)

new_pressure=pressure*new_temp1/temperature;    //Calculation of new pressure (Unit:N/m^2)

disp(new_temp1,"The final temperature is (Unit: kelvin)");
disp(new_pressure,"The final pressure is (Unit:N/m^2)");

