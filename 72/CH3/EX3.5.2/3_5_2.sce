
//Example_no.3-5-2

clc;

disp('1. When the line is shorted ,the first voltage minimum occurs at the place of the load ');

disp('2 .When the line is loaded ,the first voltage minimum shifts .15lambda from the load .the distance between successive minimas is half the wavelength');

disp('3.plot a SWR cirle for p=2');
disp('4. Move a distance of .15lambda from the minimum point along the distance scale toward the load and stop at .15lambda');

disp('5.Draw a circle from this point to the centre of the chart.');
disp('6. The intersection between the line and the SWR circle is Zt=1-j*.65');
Zt=1-(%i*.65);
Z0=50;//characeristic impedance of the line
Zl=Zt*Z0;
disp(Zl,'The load impedance is(in ohm)=');
