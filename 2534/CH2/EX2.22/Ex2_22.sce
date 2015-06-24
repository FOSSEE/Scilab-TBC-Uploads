//Ex2_22
clc
//considering the fig. 2.17 given in the question 
R1 = 1
R2 = 3
R3 = 2
V = 20
disp("R1 ="+string(R1)+"ohm")//value of resitance R1
disp("R2 ="+string(R2)+"ohm")//value of resitance R2
disp("R3 ="+string(R3)+"ohm")//value of resitance R3(across A and B terminals, 
                            //across which thevenin equivalate circuit is need to determine)
disp("V ="+string(V)+"V")//value of D.C. voltage applied

//TO FIND THEVENIN'S RESISTANCE (RTH),.. 
//CONSIDERING FIG 2.17
// WE REMOVE THE RESISTANCE (R1) ACROSS LOAD TERMINAL AB I.E. 
//AND ALSO WE SHORT THE VOLTAGE SOURCE
//NOW ACCORDING TO MODIFIED CIRCUIT

disp("1/RTH = 1/R3 + 1/R2 = "+string(1/((1/R3)+(1/R2)))+"ohm")//R1 and R2 are in parallel

//TO FIND THEVENIN VOLTAGE (VTH),.. 
//CONSIDERING FIG 2.17
//WE DISCONNECT LOAD RESISTANCE (R1) AND MADE  TERMINAL AB OPEN CIRCUIT
//ACCORDING TO MODIFIED CIRCUIT

//applying KVL in the loop, to find the amount of current flowing in circuit
//taking current as 'I' amperes

disp("V = (R3*I)+(R2*I)")
I = V/(R2+R3)
disp("or, I = V/(R2+R3) = "+string(I)+"amperes")
//Voltage drop across R2 resistance = Thevenin voltage
//thus, voltage across AB i.e., thevenin voltage, is given as
disp("VTH = R2*I = "+string(R2*I)+"V")

//  NOTE :  Notations used in the program are as mentioned in the main fig. 2.17

