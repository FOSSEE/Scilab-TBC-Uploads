clc

disp("(i) If an expansion cylinder is used in a vapour compression system, the work recovered would be extremely small, in fact not even sufficient to overcome the mechanical friction. It will not be possible to gain any work. Further, the expansion cylinder is bulky. On the other hand the expansion valve is a very simple and handy device, much cheaper than the expansion cylinder. It does not need installation, lubrication or maintenance.")
disp("The expansion valve also controls the refrigerant flow rate according to the requirement, in addition to serving the function of reducting the pressure of the refrigerant.")


disp("(ii) The comparison between centrifugal and reciprocating compressors ")

disp("1.Suitability")

disp("Centrifugal compressor")
disp("Suitable for handling large volumes of air at low pressures")

disp("Reciprocating compressor")
disp("Suitable for low discharges of air at high pressure.")


disp("2.Operational speeds")

disp("Centrifugal compressor")
disp("Usually high")

disp("Reciprocating compressor")
disp("Low")


disp("3.Air supply")

disp("Centrifugal compressor")
disp("Continuous")

disp("Reciprocating compressor")
disp("Pulsating")


disp("4.Balancing")

disp("Centrifugal compressor")
disp("Less Vibrations")

disp("Reciprocating compressor")
disp("Cyclic vibrations occur")


disp("5.Lubrication system")

disp("Centrifugal compressor")
disp("Generally simple lubrication systems are required.")

disp("Reciprocating compressor")
disp("Generally complicated")


disp("6.Quality of air delivered")

disp("Centrifugal compressor")
disp("Air delivered is relatively more clean")

disp("Reciprocating compressor")
disp("Generally contaminated with oil.")


disp("7.Air compressor size")

disp("Centrifugal compressor")
disp("Small for given discharge")

disp("Reciprocating compressor")
disp("Large for same discharge")


disp("8.Free air handled")

disp("Centrifugal compressor")
disp("2000-3000 m3/min")

disp("Reciprocating compressor")
disp("250-300 m3/min")


disp("9.Delivery pressure")

disp("Centrifugal compressor")
disp("Normally below 10 bar")

disp("Reciprocating compressor")
disp("500 to 800 bar")


disp("10.Usual standard of compression")

disp("Centrifugal compressor")
disp("Isentropic compression")

disp("Reciprocating compressor")
disp("Isothermal compression")


disp("11.Action of compressor")

disp("Centrifugal compressor")
disp("Dynamic action")

disp("Reciprocating compressor")
disp("Positive displacement")


disp("(iii)")
h2=344.927; //kJ/kg
h4=228.538; //kJ/kg
h1=h4;
cpv=0.611; ///kJ/kg0C
// s2=s3
t3=39.995; //0C
h3=363.575+cpv*(t3-30);
Rn=h2-h1;
W=h3-h2;

COP=Rn/W;
disp("COP =")
disp(COP)

cp=2.0935; //kJ/kg 0C
Q=2400/24/3600*[4.187*(15-0)+335+cp*(0-(-5))];

W=Q/COP;
disp("Work required =")
disp(W)
disp("kW")