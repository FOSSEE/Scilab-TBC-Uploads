//===========================================================================
//chapter 3 example 6

clc;clear all;

//variable declaration
e      = 0.01;           //acuuracy
v      = 150;            //voltage in V
v1     = 83;             // measured voltage  in V

//calculations
dV     = e*v;                   //magnitude of the limiting error of the instrument in V
er     = (dV/(v1))*100;    //percentage  limiting error at v1 voltage in %

//result
mprintf("limmiting error in case of 83V is = %3.2f percentage',er);
