// Calculating the maximum permissible core length for the machine
clc;
disp('Example 9.7, Page No. = 9.32')
// Given Data
Kf = 0.67;// Form factor
Bg = 1;// Maximum gap density (in Wb per meter square)
Va = 40;// Armature peripheral speed (in meter)
E = 7;// Maximum permissible value of emf induced in a conductor at no load (in Volts)
// Calculation of the maximum permissible core length for the machine
Bav = Kf*Bg;// Average gap density (in Wb per meter square)
L = E/(Bav*Va);// Maximum permissible core length (in meter)
disp(L,'Maximum permissible core length (meter)=');
//in book answer is 0.26 (meter).  The answers vary due to round off error
