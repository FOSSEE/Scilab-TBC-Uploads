//Example 4.6//
a=3.98;//in.^2 // area of region
b=100;//grain density
c=300;//grain density
A100=a*(b/c)^2
mprintf("A100 = %f in^2",A100)
//Then the grain density becomes
d=32;//grains
N=d/A100
mprintf("\nN = %f grains/in^2",N)
i=2;//from the equation
e=log(N);
f=log(i);
j=1;//from the equation
G=(e/f)+j
mprintf("\nG = %f \nor \n G=7+",G)

