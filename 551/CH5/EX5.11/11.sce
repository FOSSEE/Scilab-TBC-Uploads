clc
E=12000; //kJ/min

T2=308; //K

// Source 1
T1=593; //K
n1=1-T2/T1;

// Source 2
T1=343; //K
n2=1-T2/T1;

W1=E*n1;
disp("W1 =")
disp(W1)

W2=E*n2;
disp("W2 =")
disp(W2)

disp("Thus, choose source 2.")
disp("The source 2 is selected even though efficiency in this case is lower, because the criterion for selection is the larger output.")