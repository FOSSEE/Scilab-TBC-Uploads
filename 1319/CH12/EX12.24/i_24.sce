// To Calculate current in all branches of the network shown using nodal analysis

clc;
clear;

// Nodal Equations
//13*Va-4*Vb=300
//-Va+4*Vb=120

X=[13 -4;-1 4];
V=[300;120];

E=inv(X)*V;

Va=E(1);
Vb=E(2);

i1=(100-Va)/20;
i2=(Va-Vb)/15;
i3=(Va/10);
i4=(Vb/10);
i5=(80-Vb)/10;

disp('V',Vb,'Voltage Vb =','V',Va,'Voltage Va =')

disp('The Branch Currents as calculated are')
disp(i5,'i5',i4,'i4',i3,'i3',i2,'i2',i1,'i1')
disp('amperes respectively')

disp('The Negative sign indicates that the assumed direction of flow of current must be reveresed')

disp('amperes',abs(i1),'The Current through 20 ohm resistor on the 100V side =')
disp('amperes',abs(i2),'The Current through 15 ohm resistor =')
disp('amperes',abs(i3),'The Current through 10 ohm resistor (AE) =')
disp('amperes',abs(i4),'The Current through 10 ohm resistor (BE) =')
disp('amperes',abs(i5),'The Current through 10 ohm resistor on the 80V side =')


