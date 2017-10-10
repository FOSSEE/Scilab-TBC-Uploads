clc
// Variable Initiallization
Ea=400 // Voltage Of MOtor In Volt
Ia1=70 //Line Current In Ampere
Ia2=90 //Line Current In Ampere
Ra=0.3 //Armature Resistance In Ohm
N1=750 //Speed Of Motor In rpm
N2=300 //Speed Of Motor In rpm

//Solution
Eb1=Ea-(Ia1*Ra)
Eb2=(N2/N1)*Eb1
Rb=-((Eb2-Ea-Ia2*Ra)/Ia2)//Wrongly calculated in book,wrong value of Eb2 is taken
W1=(2*%pi*N1)/60
Kt1=Eb1/W1
T1=Kt1*Ia1
W2=(2*%pi*N2)/60
Kt2=Eb2/W2//Wrongly computed in textbook
T2=Kt2*Ia2//The answer provided in the textbook is wrong
printf('\n\n External resistance to be added=%0.1f ohm\n\n',Rb)
printf('\n\n Initial braking torque=%0.1f N-m\n\n',T1)
printf('\n\n braking torque at 300 rpm=%0.1f N-m\n\n',T2)
//The answer provided in the textbook is wrong(both)
