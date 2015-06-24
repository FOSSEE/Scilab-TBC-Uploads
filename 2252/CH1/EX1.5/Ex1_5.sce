
//refer Fig.1.11 in the textbook
//applying  KVL over loops ABEFA and BCDEB, I2=3.5*I1; -2*I1+7*I2=10
a=[3.5 -1;-2 7]
b=[0;10]
i=inv(a)*b
I1=i(1,1)
I2=i(2,1)
I=I2-I1
mprintf("Current through 8 ohm resistance=%f A from E to B", I)


