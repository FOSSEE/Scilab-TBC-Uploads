// example:-9.7,page no.-503.
// design a stepped-impedence low pass filter having a maximally flat response and a cut-off frequency of 2.5 GHZ.
w=4*10^9;wc=2.5*10^9;Zh=150;Ro=50;Zl=10;
C1=0.517;L2=1.414;C3=1.932;L4=1.932;C5=1.414;L6=0.517;
// above values are taken from table.
// for finding electrical lengths.
x1=(C1*Zl/Ro)*(180/%pi);
x2=(L2*Ro/Zh)*(180/%pi);
x3=(C3*Zl/Ro)*(180/%pi);
x4=(L4*Ro/Zh)*(180/%pi);
x5=(C5*Zl/Ro)*(180/%pi);
x6=(L6*Ro/Zh)*(180/%pi);
disp(x1)
disp(x2)
disp(x3)
disp(x4)
disp(x5)
disp(x6)