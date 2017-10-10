//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 28_3w

clc;clear;
//Given Data

rate_heat_gen_box=13;       //The rate of heat generation in the box (Unit: Watt)
theta1=100;                 //Temperature at one end (Unit: degree centigrade)
theta2=4;                   //Temperature at second end (Unit: degree centigrade)
thermal_conductivity=2;     //Thermal conductivity of material (Unit: W/m- degree centigrade)
len=8*10^-2;                //Length of the material (Unit: m)
area=12*10^-4;              //Area of the cross section (Unit: m^2)

//Calculation

theta=((theta1+theta2)/2)+(rate_heat_gen_box*len/(2*thermal_conductivity*area));    //Calculation of the equlibrium temperature of the inner surface of the box (Unit: degree centigrade)

disp(theta,"The equlibrium temperature of the inner surface of the box is (Unit: degree centigrade)");

