//Chapter 14: Water Treatment
//Problem: 8
clc;

//Initialisation of Variables
//EDTA=Ethylenediaminetetraacetic acid
v1_water = 50    //in ml for water
w1_CaCO3 = 1.5   //in mg for pure CaCO3
v1_EDTA = 44     //in ml for EDTA
v2_EDTA = 40     //in ml for EDTA
v2_water = 20    //in ml for water

//Solution
EDTA_1 = v1_water * w1_CaCO3 / v1_EDTA
hardw_40 = v2_water * 1.704
total_h1 = hardw_40 * 1000 / 40
total_h2 = total_h1 * 0.07

mprintf("Total hardness is :%.2f °Cl",total_h2)
