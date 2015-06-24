// (3.6) A closed, rigid tank filled with water vapor, initially at 20 MPa, 520C, is cooled until its temperature reaches 400C. Using the compressibility chart, determine. (a) the specific volume of the water vapor in m3/kg at the initial state.(b) the pressure in MPa at the final state.Compare the results of parts (a) and (b) with the values obtained from the superheated vapor table, Table A-4.

//solution

//variable initialization
p1 = 20                        //initial pressure in MPa
T1 = 520                       // initial temperature in degree celcius
T2 = 400                       // final temperature in degree celcius

//part(a)
//from table A-1
Tc = 647.3                     //critical temperature in kelvin
pc = 22.09                     //critical pressure in MPa

Tr = (T1+273)/Tc               //reduced temperature
Pr = p1/pc                     //reduced pressure 
Z1 = .83                       //compressibility factor
R = 8.314                      //universal gas constant in SI unit 
n = 1000/18.02                 //number of moles in a kg of water
v1 = (Z1*n*R*(T1+273))/(p1*10^6)
printf('the specific volume in state1 in m3/Kg is:\n\t v1 = %f',v1)
printf('\n and the corresponding value obtained from table A-4 is .01551 m^3/Kg')

//part(b)
vr = v1*(pc*10^6)/(n*R*Tc)
Tr2 = (T2+273)/Tc
//at above vr and Tr2
PR = .69
P2 = pc*PR
printf('\n\n the pressure in MPa in the final state is: \n\t P2 = %f',P2)
printf('\n and the corresponding value from the table is 15.16Mpa')








