//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 23_8w

clc;clear;
//Given Data
iron_alpha=12*10^-6;    //Coefficient of linear expansion of iron (Unit : /degree centigrade)
aluminium_alpha=24*10^-6;    //Coefficient of linear expansion of aluminium (Unit : /degree centigrade)
iron_rod_length=50;     //Length of iron rod (Unit : cm)
aluminium_rod_length=100;   //Length of aluminium rod (Unit : cm)
initial_temp=20;    //Initial Temperature of rods (Unit : Centigrade)
final_temp=100;     //Final Temperature of rods (Unit : Centigrade)

//Calculation

iron_rod_length_100=iron_rod_length*(1+(iron_alpha*(final_temp-initial_temp)));     //Calculating iron rod length at 100 degree centigrade (Unit : cm) 
aluminium_rod_length_100=aluminium_rod_length*(1+(aluminium_alpha*(final_temp-initial_temp)));      //Calculating aluminium rod length at 100 degree centigrade (Unit : cm)
total_length_100=iron_rod_length_100+aluminium_rod_length_100;      //Total length of rod at 100 degree centigrade(Unit : cm)

total_length_20=iron_rod_length+aluminium_rod_length;       //Total Length of rod at 20 degree centigrade (Unit:cm)
change_length=total_length_100-total_length_20;     //Change in length (Unit:cm)
new_alpha=change_length/(total_length_20*(final_temp-initial_temp));        //average coefficient of linear expansion of the composite rod is (Unit : /degree centrigrade)

disp(total_length_100,"The length of the composite system at 100 degree centigrade is (Unit : cm)");
disp(new_alpha,"The average coefficient of linear expansion of the composite rod is (Unit : /degree centrigrade)")
