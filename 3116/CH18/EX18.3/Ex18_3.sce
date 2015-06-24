
//page no 692
clc
// Given that
Ms_Fe=5.25*10^5;  //Required saturation Magnetisation in A/m
b_m=9.27*10^-24; //Bohr Magneton in ampere*m^2 
a=0.839*10^-9; //a is edge length in m
M=5*10^5;  //From previous question result
printf(" Design Example 18.1\n");
y=poly([0],'y')  // Defining X
nb=Ms_Fe*a^3/b_m;
// 'x' represent fraction of Mn++ that have substituted Fe++
n=roots(8*[5*y+4*(1-y)]-nb);  //5 is Bohr magnetons per Fe++ ion
                              //4 is Bohr magnetons per Mn++ ion
printf("\n Replacing %.1f%% of Fe++ with Mn++ would produce \n the required saturation magnetisation of %.2e A/m\n",n*100,Ms_Fe);

