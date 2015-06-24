V1 = complex(10);
V2 = complex(10*cos(-%pi/3),10*sin(-%pi/3));
Z1 = complex(1,1);
Z2 = complex(1,-1);
Z3 = complex(1,2);

Zth = Z3 + (Z1*Z2/(Z1+Z2)); // thevinin resistance 

I = (V1 - V2)/(Z1 + Z2); // current flowing through the circuit when R3 is not connected 
Vth = V1 - I*Z1; //thevinin voltage 

Ibr = Vth/Zth; //current flowing through Z3

disp(Ibr,"current flowing through Z3 = ")