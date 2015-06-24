clc;
clear;
//Example 6.8
mf_dot=6000         //Feed rate in [kg/h]
//Taking the given values from previous example(6.6)
Hf=125.79           //[kJ/kg]
ms_dot=3187.56      //[kg/h]
lambda_s=2230.2         //[kJ/kg]
Hdash=419.04        //[kJ/kg]
Hv=2676.1           //[kJ/kg]
mv_dot=(mf_dot*Hf+ms_dot*lambda_s-6000*Hdash)/(Hv-Hdash)  //Water evaporated in [kg/h]
mdash_dot=6000-mv_dot       //Mass flow rate of product [kg/h]
x=(0.01*mf_dot)*100/mdash_dot       //Wt % of solute in products
printf("\nMass flow rate of product is %f kg/h\n\n",mdash_dot);
printf("\n\nThe product concentration is %f percent by weight \n\n",x);


