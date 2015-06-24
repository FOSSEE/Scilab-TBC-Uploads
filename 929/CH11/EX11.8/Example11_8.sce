//Example 11.8

clear;

clc;

alpha=52.3*10^(-6);

ovsen=10*10^(-3);

oisen=273.2*10^(-6);

R1=10/oisen;

R2=ovsen/(10^(-6));

temp=((ovsen/alpha)-1)/R2;

R3rec=(temp-(1/R1));

R3=1/R3rec;

printf("In practice we would use R3=52.3 ohms,1 percent and make R1 and R2 adjustable as follows :");

printf("\n(a) Place the hot junction in an ice bath and adjust R1 for Vo(Tj)=0 V;");

printf("\n(b) Place the hot junction in a hot environment of known temperature and adjust R2");

printf("\n    for the desired ouput(the second adjustment can also be performed with");

printf("\n    the help of a thermocouple voltage simulator).");

printf("\nTo suppress noise pickup by the thermocouple wires, use an RC filter, say R=10 kohms");

printf("\nand C=10.1 uF");