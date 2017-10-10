//Example_a_7_10 page no:278
clc;
V_j4mag=20/2.83;
V_j4ang=0-45;
V10mag=10;
V10ang=0;
V5mag=5;
V5ang=90;
V_j4real=V_j4mag*cosd(V_j4ang);
V_j4imag=V_j4mag*sind(V_j4ang);
V_j4=V_j4real+(%i*V_j4imag);
V10real=V10mag*cosd(V10ang);
V10imag=V10mag*sind(V10ang);
V10=V10real+(%i*V10imag);
V5real=V5mag*cosd(V5ang);
V5imag=V5mag*sind(V5ang);
V5=V5real+(%i*V5imag);
Vab=-V10+V5-V_j4;
Vabmag=sqrt(real(Vab)^2+imag(Vab)^2);
Vabang=atand(imag(Vab)/real(Vab));
Vabang=180+Vabang;
disp(Vabmag,"the magnitude of thevenin voltage is (in V)");
disp(Vabang,"the angle of thevenin voltage is (in degree)");
Zab=4+((2+(%i*6))*(-%i*4)/(2+(%i*2)));
disp(Zab,"the thevenin impedance is (in ohm)");
//imaginary part of Zab varies slightly with text book hece textbook uses a rounded off value
