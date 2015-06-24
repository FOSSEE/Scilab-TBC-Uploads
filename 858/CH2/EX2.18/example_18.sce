clc
clear 
printf("example 2.18 page number 77\n\n")

//to find molecular formula
C=50.69     //% of carbon
H2=4.23     //% of hydrogen
O2=45.08    //% of oxygen
a=C/12;    //number of carbon molecules
c=O2/16;   //number of oxygen molecules
b=H2/2;    //number of hydrogen molecules
molar_mass=71;

function M=f(m)
    M=(2.09*1000)/(60*m);

endfunction

M=f((1.25/5.1));

printf("actual molecular mass = %f\n\n",M)

ratio=M/molar_mass;
a=ratio*3;
b=ratio*3;
c=ratio*2;


printf("a = %f, b = %f, c = %f",a,b,c)
printf("\n\nformula of butyric acid is = C6H6O4")

