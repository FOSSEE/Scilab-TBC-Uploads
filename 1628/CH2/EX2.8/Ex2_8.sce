
                      // Example  2.8

v=120;                // Supply voltage
p=60;                 // Power
R=v^2/p;              // Resistance

       // the combination R of bulb B & C is Rbc=240/2    i.e Rbc=120 
       //  vb=vc

Rbc=240/2;            // R of each bulb 
k=240+120;
vc=Rbc*(120/k);       // volt across Vc & Vb    {using Volt Divider Rule }
va=120-40;            // volt across Va
disp(' the Voltage across bulb A & B = '+string(vc)+' Volt');
disp(' the Voltage across bulb C = '+string(va)+' Volt');
vb=40;
p=(va)^2/240+(vb)^2/240+(vc)^2/240;      //  p=pa+pb+pc   total power

disp(' Totale Power Dissipated is = '+string(p)+' Watt');


      //    p 25       2.8
