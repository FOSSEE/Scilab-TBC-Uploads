V1 = complex(10);
V2 = complex(10*cos(-%pi/3),10*sin(-%pi/3));
Z1 = complex(1,1);
Z2 = complex(1,-1);
Z3 = complex(1,2);
//By appling the nodal analysis we get the following equation:
//Va((1/Z1)+(1/Z2)+(1/Z3)) = (V1/Z1) + (V2/Z2)

Y = (1/Z1)+(1/Z2)+(1/Z3);
Va = (1/Y)*((V1/Z1) + (V2/Z2)); //voltage of node a

Ibr = Va/Z3; //current flowing through Z3

disp(Ibr,"current flowing through Z3 = ")