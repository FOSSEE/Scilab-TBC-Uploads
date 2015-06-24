
//To determine the speed of motors when connected in series
//Page 397
clc;
clear;
V=650; //Rating of motor and Supply Voltage when connected in parallel
IR=10*650/100; //Armature Drop
N1p=1000; //Speed of the first motor in parallel operation
D1=88; //Motor 1 wheels diameter
D2=86; //Motor 2 wheels diameter

//Current Remains Constant during the start

r=D1/D2; //Ratio of the first motor wheel diameter to the second motor wheel diameter

//N1/N2 = 1/r

V1=((V-IR)/(1+(r)))+((IR)/(1+(1/r))); //Voltage of Motor 1 in series operation
V2=V-V1; //Voltage of Motor 2 in series operation

N1=N1p*(V1-IR)/(V-IR); //Speed of motor 1 in series configuration
N2=N1*r; //Speed of motor 2 in series configuration

printf('The Speed of Motor 1 in series Configuration is %g rpm\n',N1 )
printf('The Speed of Motor 2 in series Configuration is %g rpm\n',N2)
