clc;
clear;
//Example 6.2
m_dot=10000     //Weak liquor entering in [kg/h]
fr_in=0.04       //Fraciton of caustic soda IN i.e 4%
fr_out=0.25    //Fraciton of caustic soda OUT i.e 25%
//Let mdash_dot be the kg/h of thick liquor leaving
mdash_dot=fr_in*m_dot/fr_out        //[kg/h]

//Overall material balance
//kg/h of feed=kg/h of water evaporated +kg/h of thick liquor
//we=water evaporated in kg/h
//Therefore
we=m_dot-mdash_dot      //[kg/h]
printf("\n Capacity of evaporator is %d kg/h",we);
