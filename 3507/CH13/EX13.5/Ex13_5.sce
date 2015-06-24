// chapter 13
// example 13.5
// page 280

printf("operating point is (8V,1mA). During positive half cycle of \nac signal collector current swings from 1 mA to 1.5 mA \nand collector emitter voltage swings from 8 V to 7 V.\nThis is at A.During negative half cycle of \nac signal collector current swings from 1 mA to 0.5 mA \nand collector emitter voltage swings from 8 V to 9 V.\nThis is at B. \n \n")

printf("Note : When ac signal is applied, ac signal collector current and \ncollector emitter voltage variations take place about Q point. \nAlso, operating point moves along load line.\n")

clf()
x=linspace(-3*%pi,-%pi,10)
plot(x,-0.5*sin(x)+1)

x=linspace(7,9,10)
plot(x,5-0.5*x)

x=linspace(-3*%pi,-%pi,10)
plot(-sin(x)+8,x)
plot(x,xgrid())
xtitle("collector current and collector emitter voltage swings","collector emitter voltage (volts)","collector current (mA)")
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 

// Some operations on entities created by plot ...
a=gca();
a.isoview='on'; 
a.children // list the children of the axes : here it is an Compound child composed of 2 entities 
poly1= a.children.children(2); //store polyline handle into poly1 
poly1.foreground = 4; // another way to change the style...
poly1.thickness = 3;  // ...and the tickness of a curve.
poly1.clip_state='off' // clipping control
a.isoview='off';
