//impedances in the circuit 
Z1 = complex(10,10);
Z2 = complex(15,20);
Z3 = complex(3,-4);
Z4 = complex(8,6);

Ybc = (1/Z2)+(1/Z3)+(1/Z4); //admittance of the parallel combination 
Zbc = (1/Ybc); //impedance of the parallel combination

Z = Z1 + Zbc; // equivalent impedance of the circuit 

disp(Z,"equivalent impedance of the circuit = ")