V1 = complex(10);
V2 = complex(10*cos(-%pi/3),10*sin(-%pi/3));
Z1 = complex(1,1);
Z2 = complex(1,-1);
Z3 = complex(1,2);

//by mesh analysis we get the following equations:
//I1*Z11 - I2*Z12 = V1
//-I1*Z21 + I2*Z22 = -V2; where I1 and I2 are the currrents flowing in the first and second meshes respectively
Z11 = Z1 + Z1;
Z12 = Z1 + Z2;
Z21 = Z12;
Z22 = Z2 + Z2;

// the mesh equations can be represented in the matrix form as I*Z = V
Z = [Z11, -Z12; -Z21, Z22]; //impedance matrix 
V = [V1; -V2]; //voltage matrix 
I = inv(Z)*V; //current matrix = [I1;I2]

I1 = I(1,:); // I1 = first row of I matrix
I2 = I(2,:); // I1 = second row of I matrix

Ibr = I1 - I2; //current flowing through Z3

disp(Ibr,"current flowing through Z3 = ")




