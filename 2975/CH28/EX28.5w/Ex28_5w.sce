//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 28_5w

clc;clear;
//Given Data

area=100*10^-4;         //Area of the cross section (Unit:m^-2)
thick_a=0.04;           //Thickness of part A (Unit: m)
thick_b=0.025;          //Thickness of part B (Unit:m) 
k_a=200;                //Thermal conductivity of A (Unit: W/m-degree centigrade)
k_b=400;                //Thermal conductivity of B (Unit: W/m-degree centigrade)
theta_a=100;            //Temperature at A (Unit:degree centigrade)
theta_b=0;              //Temperature at B (Unit:degree centigrade)

//calculation

rate_heat_flow=area*(theta_a-theta_b)/(thick_a/k_a+thick_b/k_b);    //Calculation of The rate of heat flow through any cross section (Unit:Watt)

temp=rate_heat_flow*thick_b/(area*k_b);                             //Calculation of The temperature at the interface  (Unit: degree centigrade)

equivalent_k=(thick_a+thick_b)/(thick_a/k_a+thick_b/k_b);           //Calculation of The equivalent thermal conductivity of the compound plate  (Unit: W/m-degree centigrade)

disp(rate_heat_flow,"The rate of heat flow through any cross section is (Unit:Watt)");
disp(temp,"The temperature at the interface is (Unit: degree centigrade)");
disp(equivalent_k,"The equivalent thermal conductivity of the compound plate is (Unit: W/m-degree centigrade)");
