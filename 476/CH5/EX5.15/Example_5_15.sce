//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 15


clear;
clc;


//Given:
T1 = 300; //indoor temperatur (K)
T2 = 290; //outside temperature (K)
W_input = 1; //1 kW heat pump
W_output = 30; //given output (kW)

//To verify that given heat pump is equivalent to 30 kW heater
Q2 = (T2/(T1-T2))*W_input; //heat absorbed
Q1 = Q2 + W_input; //heat rejected

if(Q1==W_output)
     mprintf('1 kW pump if operated reversibly, is equivalent to a 30 kW heater');
else
     mprintf('The given heat pump is not equivalent to a 30 kW heater');
end

//end