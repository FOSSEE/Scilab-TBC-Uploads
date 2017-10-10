// Exa 10.3

clc;
clear;

// Given data

// D/A converter is used
Vmin = 0; // Voltage
Vmax = 10; // Voltage
ip1 = [1 0]; // for a 2-bit D/A converter(input 1)
ip2 = [0 1 1 0]; // for a 4-bit DAC(input 2)
ip3 = [1 0 1 1 1 1 0 0 ]; // foe a 8-bit DAC(input 3)

// Solution
V01 = Vmax*(ip1(1)*2^(-1)+ip1(2)*2^(-2));  // output 1
printf(' The output voltage for input1 = [10] is %d V. \n ',V01);
V02 = Vmax*(ip2(1)*2^(-1)+ip2(2)*2^(-2)+ip2(3)*2^(-3)+ip2(4)*2^(-4)); // Output 2
printf(' The output voltage for input2 = [0110] is %.2f V. \n ',V02);
V03 = Vmax*(ip3(1)*2^(-1)+ip3(2)*2^(-2)+ip3(3)*2^(-3)+ip3(4)*2^(-4)+ip3(5)*2^(-5)+ip3(6)*2^(-6)+ip3(7)*2^(-7)+ip3(8)*2^(-8)); // Output 3
printf(' The output voltage for input3 = [10111100] is %.2f V. \n',V03);
