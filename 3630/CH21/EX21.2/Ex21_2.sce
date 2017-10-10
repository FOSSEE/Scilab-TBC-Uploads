clc;
vnl=5;
vfl=4.9998;
Il=0.020;
loadre=(vnl-vfl)/Il;
disp('uA/mA',loadre*100,"loadre=");//The answers vary due to round off error
