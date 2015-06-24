
// Variable Declaration
x_G1 = 0.15                 //Sub-transient reactance of generator 1(p.u)
x_G2 = 0.15                 //Sub-transient reactance of generator 2(p.u)
x_T1 = 0.12                 //Leakage reactance of transformer 1(p.u)
x_T2 = 0.12                 //Leakage reactance of transformer 2(p.u)
x_s = 0.2                   //Reactance of tie line(p.u)
load = complex(1.5,0.5)     //Load(p.u)
S_12 = complex(0.75,0.25)   //Load at tie line(p.u)
V1 = 1.0                    //Pre-fault voltage at bus 1(p.u)

// Calculation Section
V_f = 1.0                                       //Voltage at FF(p.u)
Y_s = 1/complex(0,x_s)                          //Series admittance of line(p.u)
V2 = conj(1-(S_12/conj(Y_s)))     //Voltage at bus 2(p.u)
Z_L = conj(abs(V2)**2/load)             //Load at bus 2(p.u)
I_s = (V1-V2)*Y_s                               //Current through tie line(p.u)
I1 = I_s                                        //Current through G1 & T1(p.u)
I_L = V2/Z_L                                    //Load current(p.u)
I2 = I_L - I_s                                  //Pre-fault current from generator 2(p.u)

x_eq = (x_G1+x_T1)*(x_G2+x_T2+x_s)/(x_G1+x_T1+x_G2+x_T2+x_s)            //Equivalent reactance of n/w(p.u)
I_f = 1/complex(0,x_eq)                                                 //Fault current(p.u)
I_f1 = I_f*(x_G2+x_T2+x_s)/(x_G1+x_T1+x_G2+x_T2+x_s)                    //Fault current through G1,T1 towards F(p.u)
I_f2 = I_f*(x_G1+x_T1)/(x_G1+x_T1+x_G2+x_T2+x_s)                        //Fault current through G2,T2 & tie-line towards F(p.u)

V_1f = 0                                                                //Post-fault voltage at bus 1(p.u)
V_2f = V_1f+(I_f2-I_s)*complex(0,x_s)                                   //Post-fault voltage at bus 2(p.u)

SCC = V_f/x_eq                                                          //Fault MVA or SCC

// Result Section
disp('Case(a) :')
printf('SCC of bus 1 = %.2f p.u',SCC)
disp('Case(b) :')
printf('Total post-fault ac current shared by generator 1 , I_f1 = %.2fj p.u' ,imag(I_f1))
printf('Total post-fault ac current shared by generator 2 , I_f2 = %.2fj p.u' ,imag(I_f2))
disp('Case(c) :')
printf('Post-fault voltage of bus 2 , V_2f = %.3f∠%.2f° p.u' ,abs(V_2f),phasemag(V_2f))
