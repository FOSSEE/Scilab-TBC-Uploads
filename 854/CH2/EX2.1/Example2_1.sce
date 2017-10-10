clear
//Caption:Program to Caculate force exerted on Q2 by Q1
//Example2.1
//page 29
clc;
r2 = [2,0,5];
r1 = [1,2,3];
R12 = norm(r2-r1);
aR12 = (r2-r1)/R12;
disp(R12,'R12=')
disp(aR12,'aR12=')
Q1 = 3e-04; //charge 1 in Coulombs
Q2 = -1e-04; //charge 2 in Coulombs
Eps = 8.854e-12; //free space permittivity
F2 = ((Q1*Q2)/(4*%pi*Eps*R12^2))*aR12;
F1 = -F2;
disp(F2,'Force exerted on Q2 by Q1 in N/m F2 =')
disp(F1,'Force exerted on Q1 by Q2 in N/m F1 =')
//Result
//R12=   
//   3.  
//aR12=   
//    0.3333333  - 0.6666667    0.6666667  
//Force exerted on Q2 by Q1 in N/m F2 =   
//  - 9.9863805    19.972761  - 19.972761   
//Force exerted on Q1 by Q2 in N/m F1 =   
//     9.9863805  - 19.972761    19.972761