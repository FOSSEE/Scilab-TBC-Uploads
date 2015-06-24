//To determine the co-effcient matrix for a unbalanced load
//Page 304
clc;
clear;

Dab=12;
Dan=12;
Dbn=24;
Daa=12*0.01577;
Dbb=Daa;
Dnn=Daa;

deff('x=Coeff(y,z)','x=(2*(10^-7))*log(y/z)') //function to find the elements of the co-efficient matrix

//Part A of the question cannot be found using Scilab, Hence from the equation obtained in part A we can numerically compute the Co- Efficient Matrix

CM=[Coeff(Dan,Daa),Coeff(Dan,Dab);Coeff(Dbn,Dab),Coeff(Dbn,Dbb);Coeff(Dnn,Dan),Coeff(Dnn,Dbn)];

printf('\n Part A cannot be resulted by this code, hence from the equations obtained in Part A\n Co-Efficient Matrix is Obtained as\n')
disp(CM.*(10^7))
printf('\n * (10^-7) Wb*T/m\n')
