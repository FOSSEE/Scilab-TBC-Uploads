clear;
clc;
disp("--------------Example 6.4---------------")
band= 25*10^6; // each band is 25 MHz
bandwidth= 30 *10^3; // Each user has a bandwidth of 30 kHz in each direction.
control_channels=42; // 42 channels are used for control
channels=floor((band/bandwidth)-1); // number of channels
user_channels=channels-control_channels; // number of channels available for users
printf("%d channels are available for cellular phone users.",user_channels); // display result
