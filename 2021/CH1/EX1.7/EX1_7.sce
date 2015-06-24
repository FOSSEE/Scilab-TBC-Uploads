//Finding of Cappilary rise
//Given
d=0.03*10^-2;                //Diameter in meter
st=0.0735;                   //Surface Tension in N/m
x=0;                     //contact angle in degree
w=1000*9.81;
//To Find
h=(4*st)*cos(x)/(w*d);
h1=h*10^2;
disp(h);
disp("Capillary rise ="+string(h)+" meter");
disp("Capillary rise ="+string(h1)+" Centi meter");
