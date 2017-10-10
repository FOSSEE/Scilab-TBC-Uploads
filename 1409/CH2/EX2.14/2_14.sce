clc;
//page no:2-27
//Example:2.14
//Given carrier power is 360W and two modulation percentages are 55 and 65
u1=0.55;
u2=0.65;
ut=sqrt(u1^2+u2^2);
disp(ut,'ut=');
pc=300;
Ut=0.85;
Psb=(pc*[Ut^2])/2;
disp(+'W',Psb,'Total sideband power is');
