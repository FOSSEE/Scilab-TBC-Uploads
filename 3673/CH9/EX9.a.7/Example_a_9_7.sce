//Example_a_9_7 page no:407
clc;
Z=3+(%i*4);
Vrymag=1;//here Vrymag is assumed to be one hence it will be cancelled out in simplification unless the variable cannot be used without initializing
Vryang=0;
Vybmag=1;//here Vrymag is assumed to be one hence it will be cancelled out in simplification unless the variable cannot be used without initializing
Vybang=-120;
Vmag=Vrymag/Vybmag;
Vang=Vybang-Vryang;
Vreal=Vmag*cosd(Vang);
Vimag=Vmag*sind(Vang);
V=Vreal+(%i*Vimag);
Zyb=V*Z;
R=real(Zyb);
X=-imag(Zyb);//here negative sign is used hence only the magnitude is required
disp(R,"the value of R is (in ohm)");
disp(X,"the value of X(capacitive reactance) is (in ohm)");
