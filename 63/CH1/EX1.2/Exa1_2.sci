//Evaluate a single pulse 

A = 8e-3;
f = 0.5e+3;

w = 2*%pi*f;
pw = 1/f;
w = 2*%pi/pw;

MV = A/pw;   // Maximum voltage

disp(MV, 'Maximum voltage(in V)')

//For plotting graph
xset('window',2);
xtitle("Figure 1.7","X axis","Y axis");
x=linspace(0.1,6*%pi/(pw),50000);
y=(MV*pw*sin(pw)*x)/(pw*x) .*ones(length(x),1);
plot(x,y);

//As the values on both x and y axis very small, so plot in this example is not able to shown the variation