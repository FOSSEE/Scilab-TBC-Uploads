//Example 19.8//

b=0.09;//V //constant equal to slope of the electrochemical potential plot
i=1;//A/m^2 //corresponding current density
i0=10^-3// A/m^2 //standard state current density
n=b*log10(i/i0)
mprintf("n = %f V",n)

//Giving an electrochemical potential at 1A/m^2 of
a=(-0.763);//V //standard state potential for the zinci half cell
V=a+n
mprintf("\nV = %f V",V)
