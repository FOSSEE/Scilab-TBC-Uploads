// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 7 : TRANSIENT OVERVOLTAGES AND INSULATION COORDINATION

// EXAMPLE : 7.5 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_c1 = 400 ; // Surge impedance of line in Ω
Z_c2 = 40 ; // Surge impedance of cable in Ω
v_f = 200 ; // Forward travelling surge voltage in kV

// CALCULATIONS
// For case (a)
v_f1 = v_f * 10^3 ; // surge voltage in V
i_f = v_f1/Z_c1 ; // Magnitude of forward current wave in A

// For case (b)
r = (Z_c2 - Z_c1)/(Z_c2 + Z_c1) ; // Reflection coefficient

// For case (c)
t = 2 * Z_c2/(Z_c2 + Z_c1) ; // Refraction coefficient

// For case (d)
v = t * v_f ; // Surge voltage transmitted forward into cable in kV

// For case (e)
v1 = v * 10^3 ; // Surge voltage transmitted forward into cable in V
I = v1/Z_c2 ; // Surge current transmitted forward into cable in A

// For case (f)
v_b = r * v_f ; // surge voltage reflected back along overhead line in kV

// For case (g)
i_b = -r * i_f ; // surge current reflected back along overhead line in A

// For case (h)
// Arbitrary values are taken in graph.Only for reference not for scale 
T = 0:0.1:300 ;

for i = 1:int(length(T)/3) ; // plotting Voltage values
    vo(i) = 3;
end
for i = int(length(T)/3):length(T)
    vo(i) = 1 ;
end
for i = int(length(T))
    vo(i) = 0 ;
end


a=gca() ;
ylabel("CURRENT             SENDING END               VOLTAGE           ") ;
b = newaxes() ; // creates new axis
b.y_location = "right" ; // Position of axis
ylabel ("RECEIVING END") ; // Labelling y-axis
b.axes_visible = ["off","off","off"] ; 
e = newaxes() ; 
e.y_location = "middle" ; 
e.y_label.text = "JUNCTION" ;
subplot(2,1,1) ;
plot2d(T,vo,2,'012','',[0,0,310,6]) ;

for i = 1:int(length(T)/3) ; // Plotting current surges value
    io(i) = 1 ;
end
for i = int(length(T)/3):length(T)
    io(i) = 3 ;
end
for i = int(length(T))
    io(i) = 0 ;
end


c=gca() ;
d = newaxes() ;
d.y_location = "right" ;
d.filled = "off" ;
f.y_location = "middle" ; 
f.y_label.text = "JUNCTION" ;
subplot(2,1,2) ;
plot2d(T,io,5,'012','',[0,0,310,6]) ;

// DISPLAY RESULTS
disp("EXAMPLE : 7.5 : SOLUTION :-") ;
printf("\n (a) Magnitude of forward current wave , i_f = %d A \n",i_f) ;
printf("\n (b) Reflection coefficient , ρ = %.4f \n",r) ;
printf("\n (c) Refraction coefficient , Γ = %.4f \n",t) ;
printf("\n (d) Surge voltage transmitted forward into cable , v = %.2f kV \n",v) ;
printf("\n (e) Surge current transmitted forward into cable , i = %.f A \n",I) ;
printf("\n (f) Surge voltage reflected back along the OH line , v_b = %.2f kV \n",v_b) ;
printf("\n (g) Surge current reflected back along the OH line , i_b = %.f A \n",i_b) ;
printf("\n (h) Graph shows plot of voltage & current surges after arrival at the junction \n") ;
