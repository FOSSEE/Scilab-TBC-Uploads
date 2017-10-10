// Example no 8.1
// To compute the mean square error distortion and output signal-to-distortion ratio.
// Page no. 420


clc;
clear all;

//Given data
l1=1;                                                                // 1st Quantization level
l2=3;                                                                // 2nd Quantization level
l3=5;                                                                // 3rd Quantization level
l4=7;                                                                // 4th Quantization level

U1=(l1+l2)/2;                                                        // upper boundary of 1st level
U2=(l2+l3)/2;                                                        // upper boundary of 2nd level
U3=(l3+l4)/2;                                                        // upper boundary of 3rd level
U4=l4+(U1-l1);                                                       // upper boundary of 4th level
L1=l1-(U1-l1);                                                       // Lower boundary of 1st level

D1=integrate('(x^3-2*x^2+x)/32','x',L1,U1);                          // Mean square error distortion of 1st level
D2=integrate('(x^3-6*x^2+9*x)/32','x',U1,U2);                        // Mean square error distortion of 2nd level
D3=integrate('(x^3-10*x^2+25*x)/32','x',U2,U3);                      // Mean square error distortion of 3rd level
D4=integrate('(x^3-14*x^2+49*x)/32','x',U3,U4);                      // Mean square error distortion of 4th level
D=D1+D2+D3+D4;                                                       // Total square error distortion

P=integrate('x^3/32','x',L1,U4);                                     // Signal power

SDR=10*log10(P/D);                                                   // Output signal-to-distortion ratio.

// Displaying the result in command window
printf('\n The mean square error distortion = %0.3f',D);
printf('\n The output signal-to-distortion ratio = %0.2f dB',SDR);
printf('\n To minimize the distortion, we need to place the quantization levels closer at amplitudes close to 8 and farther at amplitudes close to zero.');
printf('\n This quantizer would be optimal for an input with a uniform pdf.');
