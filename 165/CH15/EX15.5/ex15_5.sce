//Example 15.5
clc;

fl=100;            //in Hz
fh=1000;           //in Hz
gain=4;
C=0.01*10^-6;      //Assumed

//For a LPF
R=invr(2*%pi*fh*C);
printf('\nValue of Resistor R for a LPF = %.1f k ohm\n',R/1000)

//For a HPF
R=invr(2*%pi*fl*C);
printf('\nValue of Resistor R for a HPF = %d k ohm\n',R/1000)

fc=sqrt(fl*fh);
Q=fc/(fh-fl);
printf('\nValue of Q for the given filter = %.2f \n',Q)
if Q<10 then
    printf('\nQ value is less 10, hence a Wide Band Filter\n')
end