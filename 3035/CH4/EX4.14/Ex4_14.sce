
// Variable Declaration
V_r = 220000.0   //Voltage(V)
P = 100.0        //Power(MW)
r = 0.08         //Series resistance(ohm)
x = 0.8          //Series reactance(ohm)
s = 6.0*10**(-6) //Shunt susceptance(mho)
pf = 0.8         //Power factor lagging
l_1 = 60.0       //Transmission length(km) for case(i)
l_2 = 200.0      //Transmission length(km) for case(ii)
l_3 = 300.0      //Transmission length(km) for case(iii)
l_4 = 500.0      //Transmission length(km) for case(iv)

// Calculation Section
z = complex(r,x)                                                   //Series impedance/km(ohm)
y = complex(0,s)                                                   //Shunt admittance/km(mho)
theta_R = acos(pf)
P_R = P/3                                                          //Active power at receiving end/phase(MW)
Q_R = (P/3)*tan(theta_R)                                      //Reactive power at receiving end/phase(MVAR)
V_R = V_r/(3**0.5)                                                 //Receiving end voltage/phase(V)
I_R = P*10**6/((3**0.5)*V_r*pf)*(pf - complex(0,sin(theta_R)))//Receiving end current(A)
Z_c = (z/y)**(0.5)                                                 //Surge impedance(ohm)

A_1 = 1                                                 //Constant A
B_1 = z*l_1                                             //Constant B(ohm)
C_1 = 0                                                 //Constant C(mho)
D_1 = A_1                                               //Constant D
V_S_1 = A_1*V_R + B_1*I_R                               //Sending end voltage(V/phase)
I_S_1 = I_R                                             //Sending end current(A)
theta_S_1 = (phasemag(I_S_1)*%pi/180) - (phasemag(V_S_1)*%pi/180)     //Sending end power factor
P_S_1 = abs(V_S_1*I_S_1)*cos(theta_S_1)*10**-6     //Sending end power(MW)
n_1 = (P_R/P_S_1)*100                                   //Transmission efficiency(%)
reg_1 = (abs(V_S_1/A_1) - V_R)/V_R*100                  //Regulation(%)
Q_S_1 = V_S_1 * conj(I_S_1)*10**-6                //Sending end reactive power(MVAR)
Q_line_1 = imag(Q_S_1) - Q_R                             //Reactive power absorbed by line(MVAR)

Z_S_2 = z*l_2
Y_P_2 = y*l_2/2
A_2 = 1 + Y_P_2*Z_S_2
B_2 = Z_S_2
C_2 = Y_P_2*(2 + Y_P_2*Z_S_2)
D_2 = A_2
V_S_2 = A_2*V_R + B_2*I_R              //Sending end voltage(V/phase) 
I_S_2 = C_2*V_R + D_2*I_R              //Sending end current(A)
S_S_2 = V_S_2*conj(I_S_2)*10**-6 //Sending end complex power(MVA)
P_S_2 = real(S_S_2)                     //Power at sending end(MW)
n_2 = (P_R/P_S_2)*100                  //Transmission efficiency(%)
reg_2 = (abs(V_S_2/A_2) - V_R)/V_R*100 //Regulation(%)
Q_line_2 = imag(S_S_2) - Q_R            //Reactive power absorbed by line(MVAR)

g_3 = (y*z)**(0.5)                     //propagation constant(/km)
gl_3 = g_3 * l_3
cosh_gl_3 = cosh(gl_3)
sinh_gl_3 = sinh(gl_3)
A_3 = cosh_gl_3
B_3 = Z_c * sinh_gl_3
C_3 = sinh_gl_3/Z_c
D_3 = cosh_gl_3
V_S_3 = A_3*V_R + B_3*I_R              //Sending end voltage(V/phase) 
I_S_3 = C_3*V_R + D_3*I_R              //Sending end current(A)
S_S_3 = V_S_3*conj(I_S_3)*10**-6 //Sending end complex power(MVA)
P_S_3 = real(S_S_3)                     //Power at sending end(MW)
n_3 = (P_R/P_S_3)*100                  //Transmission efficiency(%)
reg_3 = (abs(V_S_3/A_3) - V_R)/V_R*100 //Regulation(%)
Q_line_3 = imag(S_S_3) - Q_R            //Reactive power absorbed by line(MVAR)

g_4 = (y*z)**(0.5)                     //propagation constant(/km)
gl_4 = g_4 * l_4
cosh_gl_4 = cosh(gl_4)
sinh_gl_4 = sinh(gl_4)
A_4 = cosh_gl_4
B_4 = Z_c * sinh_gl_4
C_4 = sinh_gl_4/Z_c
D_4 = cosh_gl_4
V_S_4 = A_4*V_R + B_4*I_R              //Sending end voltage(V/phase) 
I_S_4 = C_4*V_R + D_4*I_R              //Sending end current(A)
S_S_4 = V_S_4*conj(I_S_4)*10**-6 //Sending end complex power(MVA)
P_S_4 = real(S_S_4)                     //Power at sending end(MW)
n_4 = (P_R/P_S_4)*100                  //Transmission efficiency(%)
reg_4 = (abs(V_S_4/A_4) - V_R)/V_R*100 //Regulation(%)
Q_line_4 = imag(S_S_4) - Q_R            //Reactive power absorbed by line(MVAR)

// Result Section
printf('Case(i) : For Length = 60 km')
printf('Efficiency , n = %.2f percent' ,n_1)
printf('Regulation = %.3f percent' ,reg_1)
printf('Reactive power at sending end , Q_S = %.2f MVAR' ,imag(Q_S_1))
printf('Reactive power absorbed by line , Q_line = %.2f MVAR' ,Q_line_1)
printf('\nCase(ii) : For Length = 200 km')
printf('Efficiency , n = %.2f percent' ,n_2)
printf('Regulation = %.2f percent' ,reg_2)
printf('Reactive power at sending end , Q_S = %.2f MVAR' ,imag(S_S_2))
printf('Reactive power absorbed by line , Q_line = %.2f MVAR' ,Q_line_2)
printf('\nCase(iii) : For Length = 300 km')
printf('Efficiency , n = %.2f percent' ,n_3)
printf('Regulation = %.2f percent' ,reg_3)
printf('Reactive power at sending end , Q_S = %.2f MVAR' ,imag(S_S_3))
printf('Reactive power absorbed by line , Q_line = %.2f MVAR' ,Q_line_3)
printf('\nCase(iv) : For Length = 500 km')
printf('Efficiency , n = %.2f percent' ,n_4)
printf('Regulation = %.2f percent' ,reg_4)
printf('Reactive power at sending end , Q_S = %.2f MVAR' ,imag(S_S_4))
printf('Reactive power absorbed by line , Q_line = %.2f MVAR' ,Q_line_4)
printf('\nNOTE : ERROR : Calculation mistake in case(iv) efficiency in textbook')
