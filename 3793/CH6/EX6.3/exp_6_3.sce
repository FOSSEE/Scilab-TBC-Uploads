clear;
clc;
y12=complex(.0059,-.0235);
y14=complex(.0055,-.0183);
y23=complex(.0077,-.0385);
y24=complex(.0240,-.0320);
y34=complex(.0100,-.0300);
y40=complex(.0100,-.0200);
Y11=y12+y14;
Y22=y12+y23+y24;
Y33=y23+y34;
Y44=y14+y24+y34+y40;
Y13=0;
Y31=0;
Y12=-y12;
Y21=-y12;
Y14=-y14;
Y41=-y14;
Y23=-y23;
Y32=-y23;
Y24=-y24;
Y42=-y24;
Y34=-y34;
Y43=-y34;
Yb=[Y11 Y12 Y13 Y14; Y21 Y22 Y23 Y24; Y31 Y32 Y33 Y34; Y41 Y42 Y43 Y44];
mprintf(" Ybus matrix is\n");
disp(Yb);




