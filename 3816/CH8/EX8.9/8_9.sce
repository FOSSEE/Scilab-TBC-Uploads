clc;
clear;
disp('Self Excitation')
Sm=24*10^(-3);//minimum capacitive susceptance 
C=Sm/314;
disp(C,'The capacitance at self excitation is:')
disp('For generating 3KV:')
Sm1=43*10^(-3);//Using method of interpolation we get 43ms for 1.73KV/Ph(3KV line)
C1=Sm1/314;
disp(C1,'The capacitance for generating 3KV is:')
disp('To determine the operating conditions for a load(125-20i)A at 3KV 50Hz')
Im=60;
It=10;
Ir=125;
Ix=20;
Ia=Ir+It;
Ia1=Ix+Im;
Ic=104;
Sm2=59.6*10^(-3);
C2=Sm2/314;
disp(Ia1,Ia,'The active currents are:')
disp(Ic,'The capacitive current is:')
disp(C2,'The capacitance in micro farad is:')
