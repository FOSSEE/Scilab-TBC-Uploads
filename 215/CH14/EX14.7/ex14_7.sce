clc
//Example 14.7
//Install Symbolic toolbox
//Find the current through 5 ohm resistor
syms s
s=%s
//From figure 14.3
//Writing the KVL equation and taking the Laplace transform
I=1.5/(s*(s+2))+5/(s+2)
I1=1.5/(s*(s+2))
I2=5/(s+2)
I1p=pfss(I1)
i1=ilaplace(I1p(1))
i2=ilaplace(I1p(2)+I2)
i=i1+i2
disp(i,'i(t)=')