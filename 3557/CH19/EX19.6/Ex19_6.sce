//Example 19.6//

a=0.000;//V //volt //standard state potential for the hydrogen half cell
b=(-0.763);//V //volt //standard state potential for the zinci half cell
V0=a-b
mprintf("V0 = %f V",V0)
n=2;//As two electrons  are transferred per Zn atom
V=0.45;//V //Cell voltage
c=(-0.059);//From the formula
pH=((V-V0)*n)/(c*n)
mprintf("\npH = %f ",pH)

