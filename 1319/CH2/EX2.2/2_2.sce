// To calculate current in each branch using loop analysis.

clc;
clear;

// MESH Equations for the given network.
//3*i1-i2+0*i3=11
//-i1+10*i2-2*i3=0
//0*i1+-2*i2+5*i3=13

//Voltage supplies are 11V and 13V

R=[3 -1 0;-1 10 -2; 0 -2 5];
E=[11;0;13];

// Loop Currents

I=inv(R)*E;

i1=I(1);
i2=I(2);
i3=I(3);

ia=i1-i2; // Assumed direction from Mesh 1
ib=i2-i3; // Assumed direction from Mesh 2

disp('A',ib,'ib (through 2 resistor between 7 ohm and 3 ohm resistor) =','A',ia,'ia(through 1 ohm resistor) =','A',i3,'i3 =','A',i2,'i2 =','A',i1,'i1 =','The Calculated Loop Currents are')

disp('The Negative sign indicates that the assumed direction of flow of current should be reveresed')

// To obtain the magnitude of direction.

if(i1<0)
    i1=abs(i1);
end
if(i2<0)
    i2=abs(i2);
end
if(i3<0)
    i3=abs(i3);
end
if(ia<0)
    ia=abs(ia);
end
if(ib<0)
    ib=abs(ib);
end

disp('A',i1,'The Current through 2 ohm resistor on the 11V side =')
disp('A',i2,'The Current through 7 ohm resistor =')
disp('A',i3,'The Current through 3 ohm resistor on the 13V side =')
disp('A',ia,'The Current through 1 ohm resistor =')
disp('A',ib,'The Current through 2 ohm resistor between the 7 and 3 ohm resistors =')
