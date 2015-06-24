a = 21.89;
y = 18.5;
x = 8.9;
PC = 100*(x*12)/((8.9*12)+(18.5*1));
PH = 100-PC;
AFR = ((32*a)+(3.76*a*28))/((12*x)+y);
EAU = (8.8*32)/((21.89*32)-(8.8*32));
disp("%",PH,"Hydrogen","%",PC,"carbon","The composition of fuel is")
disp(AFR,"Air fuel ratio is")
disp("%",EAU*100,"Percentage of excess air used is")