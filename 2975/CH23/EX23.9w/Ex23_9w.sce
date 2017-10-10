//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 23_9w

clc;clear;
//Given Data
length_20=15;   //Diameter of iron ring at 20 degree centigrade (Unit: cm) 
length_req=15.05;   //Diameter of iron ring at required temperature (Unit: cm)
temp=20;    //Room Temperature (Unit: degree centigrade)
alpha_iron=12*10^-6;    //Coefficient of linear expansion of iron (Unit : / degree centigrade)

//Calculation

change_temp=(length_req-length_20)/(length_20*alpha_iron);  //Calculating change in temperature required (Unit : Centigrade)
new_temp=temp+change_temp;  //Calculating the temperature required (Unit : Centigrade)

strain=(length_req-length_20)/length_20;    //Calculating Strain (Unit: unit less)

disp(new_temp,"The minimum temperature of ring to be heated to is (Unit : Centigrade)");
disp(strain,"The strain developed in the ring when it comes to the room temperature is (Unit : unit less)");
