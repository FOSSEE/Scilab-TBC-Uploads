//Example_a_5_3 page no:203
clc;
R1=100;
R2=500;
V1mag=23.1;
V1ang=19.71;
V1real=V1mag*cosd(V1ang);
V1imag=V1mag*sind(V1ang);
V100=30;
//calculating the required voltages
V100real=real(V100)-V1real;
V100imag=imag(V100)-V1imag;
V100mag=sqrt(V100real^2+V100imag^2);
V100ang=atand(V100imag/V100real);
disp(V100mag,"the magnitude of voltage across 100 ohm is(in V)");
disp(V100ang,"the angle of voltage across 100 ohm is(in degree)");
disp(V1mag,"the magnitude of voltage across branch element is (in V)");
disp(V1ang,"the angle of voltage across branch element is (in degree)");
//calculating the required current values
I100mag=V100mag/R1;
I100ang=V100ang;
disp(I100mag,"the magnitude of current passing through 100 ohm is(in A)");
disp(I100ang,"the angle of current passing through 100 ohm is(in degree)");
I500mag=V1mag/R2;
I500ang=V1ang;
disp(I500mag,"the magnitude of current passing through 500 ohm is(in A)");
disp(I500ang,"the angle of current passing through 500 ohm is(in degree)");
Il1mhmag=V1mag/314.1;
Il1mhang=V1ang-90;
disp(Il1mhmag,"the magnitude of current passing through 1 milli Henry inductor is (in A)");
disp(Il1mhang,"the angle of current passing through 1 milli Henry inductor is (in degree)");
Il3mhmag=V1mag/942.5;
Il3mhang=V1ang-90;
disp(Il3mhmag,"the magnitude of current passing through 3 milli Henry inductor is (in A)");
disp(Il3mhang,"the angle of current passing through 3 milli Henry inductor is (in degree)");
disp("the total current lags the circuit is predominantly inductive");
//values varies slightly with text book hence values are rounded off in text book
