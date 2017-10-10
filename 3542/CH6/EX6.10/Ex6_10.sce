// Example no 6.10
// To demonstrate how the received signal is detected properly using baseband differential detector.
// Page no. 310

clc;
clear all;

// Given data
x1=-0.707;
y1=-0.707;
x2=0.707;
y2=-0.707;
x3=0.707;
y3=0.707;

if x1<0 then                                                          // Applying decision rule
printf('S1 = 0');
else
printf('\n S1 = 1');  
end  
if y1<0 then
printf('\n S2 = 0');
else
printf('\n S2 = 1');  
end  
if x2<0 then
printf('\n S3 = 0');
else
printf('\n S3 = 1');  
end  
if y2<0 then
printf('\n S4 = 0');
else
printf('\n S4 = 1');  
end  
if x3<0 then
printf('\n S5 = 0');
else
printf('\n S5 = 1');  
end  
if y3<0 then
printf('\n S6 = 0');
else
printf('\n S6 = 1');  
end  
