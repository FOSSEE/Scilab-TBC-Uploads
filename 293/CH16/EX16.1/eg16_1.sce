//a
V1 = 1100; //higher voltage
V2 = 220; //lower voltage 
a = V1/V2; //turns ratio 
r1 = 0.1; //high voltage winding resistance(in ohms)
x1 = 0.3; //high voltage leakage reactance(in ohms)
r2 = 0.004; //low voltage winding resistance(in ohms)
x2 = 0.012; //low voltage leakage reactance(in ohms)

Re1 = r1 + (a^2)*r2 ; //equivalent winding resistance referred to the     primary side 
Xe1 = x1 + (a^2)*x2 ; //equivalent leakage reactance referred to the      primary side 
Re2 = (r1/a^2) + r2 ; //equivalent winding resistance referred to the     secondary side 
Xe2 = (x1/a^2) + x2 ; //equivalent leakage reactance referred to the     secondary side 

disp("a")
disp(Re1,"equivalent winding resistance referred to the primary side")
disp(Xe1,"equivalent leakage reactance referred to the primary side")
disp(Re2,"equivalent winding resistance referred to the secondary side")
disp(Xe2,"equivalent leakage reactance referred to the secondary side")

//b
P = 100; //power (in kVA)
I21 = P*1000/V1; //primary winding current rating 
Vre1 = I21*Re1; //equivalent resistance drop (in volts)
VperR1 = Vre1*100/V1 ; // % equivalent resistance drop 

Vxe1 = I21*Xe1; //equivalent reactance drop (in volts)
VperX1 = Vxe1*100/V1; // % equivalent reactance drop 

disp("b")
disp(Vre1,"equivalent resistance drop expressed in terms of primary quantities(in volts) = ")
disp(VperR1,"% equivalent resistance drop expressed in terms of primary  quantities = ")
disp(Vxe1,"equivalent reactance drop expressed in terms of primary quantities(in volts) =")
disp(VperX1,"% equivalent reactance drop expressed in terms of primary  quantities = ")
 
//c
I2 = a*I21; // secondary winding current rating 
Vre2 = I2*Re2; //equivalent resistance drop (in volts)
VperR2 = Vre2*100/V2 ; // % equivalent resistance drop 

Vxe2 = I2*Xe2; //equivalent reactance drop (in volts)
VperX2 = Vxe2*100/V2; // % equivalent reactance drop 

disp("c")
disp(Vre2,"equivalent resistance drop expressed in terms of secondary quantities(in volts) = ")
disp(VperR2,"% equivalent resistance drop expressed in terms of secondary  quantities = ")
disp(Vxe2,"equivalent reactance drop expressed in terms of secondary quantities(in volts) =")
disp(VperX2,"% equivalent reactance drop expressed in terms of secondary  quantities = ")

//d
Ze1 = complex(Re1,Xe1); //equivalent leakage impedance referred to the  primary
Ze2 = Ze1/a ; //equivalent leakage impedance referred to the  secondary 

disp("d")
disp(Ze1,"equivalent leakage impedance referred to the  primary = ")
disp(Ze2,"equivalent leakage impedance referred to the  secondary = ")