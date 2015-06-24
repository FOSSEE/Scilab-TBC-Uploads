//Chapter-9,Example 8,Page 221
clc();
close();

lamda_H=0.0348   //equivalent conductance of H+ ion

lamda_CH3COO=0.004  //equivalent conductance of CH3COO- ion

lamda= lamda_H+lamda_CH3COO //equivalent conductance  at infinity

lamda_v= 0.018    //equvalent conductance 

alpha= lamda_v/lamda   //degree of dissolution

printf('the degree of dissolution is %.4f ',alpha)
