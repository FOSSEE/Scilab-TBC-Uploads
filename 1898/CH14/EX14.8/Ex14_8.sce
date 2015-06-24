clear all; clc;

disp("Scilab Code Ex 14.8 : ")

//Given:
ro = 60; //mm
ri = 50; //mm
E = 70; //kN/mm^2
W = 600; //kN
L = 240; //mm
h = 0;

//Part a:

A = (%pi)*(ro^2 - ri^2);
del_st= (W*L)/(A*E);

//Part b:

del_max = del_st*(1 + sqrt(1 + 2*(h/del_st)));

//Display:

  printf('\n\nThe maximum displacement at the top of the pipe for gradually applied load   = %1.4f mm',del_st);
    printf('\nThe maximum displacement at the top of the pipe for suddenly applied load    = %1.4f mm',del_max);

//---------------------------------------------------------------------------END------------------------------------------------------------------------------
