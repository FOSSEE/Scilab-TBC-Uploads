// To determine the current using loop analysis

clc;
clear;

// MESH Equations
//6*i1-2*i2=30
//-2*i1+6*i2=-40

R=[6 -2;-2 6];
E=[30;-40];

//The Loop Currents

I=inv(R)*E; // Matrix Method to solve for two unknowns in two eaquations.

i1=I(1);
i2=I(2);
i3=i1-i2;

disp('A',i2,'i2 =','A',i1,'i1 =','The Calculated Loop Currents are')

disp('The Negative sign indicates that the assumed direction of flow of current should be reveresed.')

if(i1<0);
    i1=abs(i1);
end

if(i2<0);
        i2=abs(i2);
end

disp('A',i1,'The Current through 4 ohm resistor on the 30V side =')
disp('A',i2,'The Current through 4 ohm resistor on the 40V side =')
disp('A',i3,'The Current through 2 ohm resistor =')
    
