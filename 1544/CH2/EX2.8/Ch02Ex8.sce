// Scilab code Ex2.8: 49 (2008)
clc; clear;
// Applying Kirchhoffâ€™s current law (the sum of the currents arriving at a junction is equal to the sum of the currents leaving that junction) at junction A
I2 = 40 + 10;                  // Electric current, A
// Applying Kirchhoffâ€™s current law at junction C
I1 = 80 - I2;                  // Electric current, A
// Applying Kirchhoffâ€™s current law at junction D
I3 = 80 + 30;                  // Electric current, A
// Applying Kirchhoffâ€™s current law at junction E
I4 = I3 - 25;                   // Electris current, A
// Applying Kirchhoffâ€™s current law at junction F
I5 = 30 - 85;                   // Electric cuurent, A
printf("\nCurrent I1 = %2d A\nCurrent I2 = %2d A\nCurrent I3 = %3d A\nCurrent I4 = %2d A\nCurrent I5 = %2d A,", I1, I2, I3, I4, I5);

// Result
// Current I1 = 30 A
// Current I2 = 50 A
// Current I3 = 110 A
// Current I4 = 85 A
// Current I5 = -55 A
