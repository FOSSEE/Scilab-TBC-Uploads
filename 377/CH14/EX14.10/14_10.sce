disp("(W/L)=2*Idsat/(μ*cox*((Vg-Vt)^2))");
Idsat=500*10^-8;
un=500;//say un=μe
uh=300;//say uh=μh
b=4.3;//say b=(Vg-Vt)
eox=3.9*8.85*10^-14;  //say eox=Єox
dox=5*10^-3;
cox=eox/dox;
printf('\n The value of Cox is %fnF/cm^2',cox*10^9);
an=2*Idsat/(un*cox*(b^2));
ap=2*Idsat/(uh*cox*(b^2));
printf('\n The value of W/L for n-MOSFET is %f',an);
printf('\n The value of W/L for p-MOSFET is %f',ap*0.1);