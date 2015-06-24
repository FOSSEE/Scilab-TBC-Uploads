

                    // Example  12.2

Vl=415;              // Supply Voltage
Vph=Vl/sqrt(3);      // Phase Voltage 
p1=10000;            // Load of 10-kW
p2=8000;             // Load of 8-kW
p3=5000;             // Load of 5-kW

IR=p1/Vph;           //Current by ( 10-kW Load )
disp(' Current by ( 10-kW Load ) = '+string(IR)+' Amp');

IY=p2/Vph;           // Current by ( 8-kW Load )
disp(' Current by ( 8-kW Load ) = '+string(IY)+' Amp');

IB=p3/Vph;           // nCurrent by ( 5-kW Load )
disp(' Current by ( 5-kW Load ) = '+string(IB)+' Amp');

IH=IY*cosd(30)-IB*cosd(30);         // Horizontal Current
IV=IR-IY*sind(30)-IB*sind(30);      // Vertical Current
IN=sqrt(IH^2+IV^2);                 // Current in Neutral Conductor
disp(' Current in Neutral Conductor = '+string(IN)+' Amp');




        //   p 410     12.2



