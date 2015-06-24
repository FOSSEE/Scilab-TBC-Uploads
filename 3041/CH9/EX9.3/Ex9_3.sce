//Variable declaration
R=20*10**3              //resistance of resistor(ohms)
w=25                    //width(um)
Rs=200                  //sheet resistance(ohm/square)
R1=5*10**3              //resistance(ohms)

//Calculations
//Part a
l=(R*w)/Rs              //length required to fabricate 20 kohms(um)

//Part b
L=25             //length of resistor of 5 k ohms(um)
w1=(Rs*L)/R1     //width required to fabricate 5 kohms(um)

//Results
printf ("length required to fabricate 20 kohms resistor is %.1f um",l)
printf ("width required to fabricate 5 kohms resistor is %.1f um",w1)
