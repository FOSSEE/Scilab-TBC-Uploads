// To calculate current in each branch using loop analysis and point voltages in a given network.

clc;
clear;

// MESH Equations for the given network.
//3.95*i1-3.75*i2+0*i3=120
//-3.75*i1+9.5*i2-5.45*i3=0
//0*i1-5.45*i2+5.55*i3=-110

// Positive of 120V DC supply connected to 0.2 ohm resistor
// Positive of 110 DC supply connected to 0.1 ohm resistor

//Voltage supplies are 120V and 110V

R=[3.95 -3.75 0;-3.75 9.5 -5.45; 0 -5.45 5.55];
E=[120;0;-110];

R1=abs(R(2)); // Resistor carrying ia
R2=abs(R(8)); // Resistor carrying ib

// Loop Currents

I=inv(R)*E;

i1=I(1);
i2=I(2);
i3=I(3);

ia=i1-i2; // Assumed direction from Mesh 1
ib=i2-i3; // Assumed direction from Mesh 2

// Using Nodal Analysis to find V1 and V2.
V1=R1*ia;
V2=R2*ib;

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

disp('A',i1,'The Current through 0.2 ohm resistor on the 120V side =')
disp('A',i2,'The Current through 0.3 ohm resistor =')
disp('A',i3,'The Current through 0.1 ohm resistor on the 110V side =')
disp('A',ia,'The Current through 3.75 ohm resistor =')
disp('A',ib,'The Current through 5.45 ohm resistor =')

disp('V',V1,'The voltage V1 =')
disp('V',V2,'The voltage V2 =')
