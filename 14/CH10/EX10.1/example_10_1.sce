//Chapter 10
//Example 10.1
//Page 253
//unloadedfault
//run clear command then execute dependancy file and then the source file
//dependency file is pucalc.sci
clc;
//Given
P_g1 = 50e6;
V_g1 = 13.8e3;
P_g2 = 25e6;
V_g2 = 13.8e3;
P_t = 75e6;
V_t_lt = 13.8e3;
V_t_ht = 69e3;
X11_g = 0.25;
X11_t = 0.10;
Vbase = 69e3;
Pbase = 75e6;
Vbase_lt = 13.8e3;
V_ht = 66e3;
X11_d_g1 = pucalc(X11_g,V_t_lt,Vbase_lt,Pbase,P_g1);
X11_d_g2 = pucalc(X11_g,V_t_lt,Vbase_lt,Pbase,P_g2);
E_g1 = V_ht / Vbase;
E_g2 = V_ht / Vbase;
disp('For Generator 1')
printf("Xd11 = %.3f per unit \n Eg1 = %.3f per unit \n",X11_d_g1,E_g1)
disp('For Generator 2')
printf("Xd11 = %.3f per unit \n Eg2 = %.3f per unit \n",X11_d_g2,E_g2)
X_g12 = (X11_d_g1 * X11_d_g2) / (X11_d_g1 + X11_d_g2);
I11 = E_g1 / (%i*(X_g12 + X11_t));
disp(I11,'Subtransient current in the short circuit in per unit is')
Vdt = I11 * (%i*X11_t);
disp(Vdt,'Voltage on the delta side of the transformer in per unit is')
I11_g1 = (E_g1 - Vdt) / (%i*X11_d_g1);
I11_g2 = (E_g2 - Vdt) / (%i*X11_d_g2);
disp('Subtransient current in generator 1 and 2 in per unit respectively')
disp(I11_g1)
disp(I11_g2)
Ibase = Pbase / (sqrt(3) * Vbase_lt);
I11_1 = abs(I11_g1) * Ibase;
I11_2 = abs(I11_g2) * Ibase;
disp('Subtransient current in generator 1 and 2 in Amperes respectively')
disp(I11_1)
disp(I11_2)