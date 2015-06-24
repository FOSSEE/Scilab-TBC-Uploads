//clear//
//Caption: Program to calculate self inductances and Mutual Inductances between two coaixal solenoids
//Example9.9
//page 297
clc;
n1 = sym('n1');
n2 = sym('n2');
I1 = sym('I1');
I2 = sym('I2');
az = sym('az');
R1 = sym('R1');
R2 = sym('R2');
u0 = sym('u0');
H1 = n1*I1*az;
disp(H1,'H1 =');
H2 = n2*I2*az;
disp(H2,'H2 =');
S1 = float(%pi*R1^2);
S2 = float(%pi*R2^2);
Hz =  float(H1/az);
phi12 = float(u0*Hz*S1);
disp(phi12,'phi12 = ')
M12 = n2*phi12/I1;
disp(M12,'M12 =')
//R1 = 2e-02; 
//R2 = 3e-02;
//n1 = 50*100; //number of turns/m
//n2 = 80*100; //number of turns/m
//u0 = 4*%pi*1e-07;
M12 = float(limit(M12,R1,2e-02));
M12 = float(limit(M12,R2,3e-02));
M12 = float(limit(M12,n1,5000));
M12 = float(limit(M12,n2,8000));
M12 = float(limit(M12,u0,4*%pi*1e-07));
disp(M12*1e03,'Mutual Inductance in mH/m M12=')
L1 = u0*n1^2*S1;
L1 = float(limit(L1,u0,4*%pi*1e-07));
L1 = float(limit(L1,n1,5000));
L1 = float(limit(L1,R1,2e-02));
disp(L1*1e3,'Self Inductance of solenoid 1 in mH/m L1 =')
L2 = u0*n2^2*S2;
L2 = float(limit(L2,u0,4*%pi*1e-07));
L2 = float(limit(L2,n2,8000));
L2 = float(limit(L2,R2,3e-02));
disp(L2*1e3,'Self Inductance of solenoid 1 in mH/m L2 =')
//Result
// H1 =   az*n1*I1   
// H2 =    az*n2*I2   
// phi12 =     3.141592653011903*n1*u0*I1*R1^2   
// M12 =    3.141592653011903*n1*n2*u0*R1^2   
// Mutual Inductance in mH/m M12=   63.16546815077   
// Self Inductance of solenoid 1 in mH/m L1 = 39.47841759423   
// Self Inductance of solenoid 1 in mH/m L2 =   227.39568534276   
