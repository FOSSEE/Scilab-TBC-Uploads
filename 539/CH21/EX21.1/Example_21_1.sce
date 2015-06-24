//Example 20.1 Calculation of absorption coefficient

clear;
clc;

printf("\tExample 21.1\n");

// x is thickness of glass(mm)
x=200;

//It is intensity of non-absorbed radiation
//Io is intensity of non-relected radiation

f=0.98;  //f=It/Io

//b is absorption coefficient

b=-log(f)/x;

printf("\nAbsorption coefficient is %f mm^-1\n",b);

//End