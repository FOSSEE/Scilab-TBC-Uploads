                             //EXAMPLE 1-35        PG NO 30-31
I1=4;                    //Current
I2=6;                      //Current
V=110;                        //Voltage
Vab1=V-(6+4)*2;
VB=80;
VC=50;
R11=(Vab1-VB)/I1;
R12=(Vab1-VC)/I2;                     
Vab2=V-(-2+20)*2;                    //Voltage
R21=(VB-Vab2)/2;                  //Resistance
R22=(Vab2-VC)/20;               //Resistance
I=(V-VB)/2;                 //Current
R=(VB-VC)/I;            //Resistance
disp('i)variable = '+string (Vab1)+' ohm')
disp('ii)resistance = '+string (R11)+' ohm')
disp('iii)resistance = '+string (R12)+' ohm')
disp('iv)variable = '+string (Vab2)+' ohm')
disp('v)resistance = '+string (R21)+' ohm')
disp('vi)resistance = '+string (R22)+' ohm')
disp('vii)    resistance    = '+string (R) + ' ohm')
disp('viii)  Current = '+string   (I) + ' A')



