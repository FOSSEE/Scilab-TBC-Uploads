clear;
clc;

// Example: 5.6
// Page: 153

printf("Example: 5.6 - Page: 153\n\n");

// Solution

//*****Data*****//
W = 5;// [hp]
Q = 7000;// [J/s]
Th = 400 + 273;// [K]
Tl = 24 + 273;// [K]
//*************//

W = 5*745.7;// [W]
thermal_eta = W/Q;
theoretical_eta = (Th - Tl)/Th;

if theoretical_eta <= thermal_eta
    printf("Claim is Valid");
else
    printf("Claim is not Valid");
end