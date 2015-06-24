//Design Example 20.1: Designing a cubic mixed-ferrite magnetic material

clear;
clc;

printf(" Design Example 20.1\n");

x=poly([0],'x');  // Defining X

Ms_Fe=5.25*10^5;  //Required saturation Magnetisation

b_m=9.27*10^-24; //ampere*m^2  (Bohr Magneton)

a=0.839*10^-9; //a is edge length in m

M=5*10^5;  //From previous question result

nb=Ms_Fe*a^3/b_m;

// 'x' represent fraction of Mn++ that have substituted Fe++

n=roots(8*[5*x+4*(1-x)]-nb);  //5 is Bohr magnetons per Fe++ ion
                              //4 is Bohr magnetons per Mn++ ion

printf("\nReplacing %f percent of Fe++ with Mn++ would produce the required saturation magnetisation\n",n*100);

//End