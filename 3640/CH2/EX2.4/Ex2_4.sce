clc
Vl=2300 //terminal voltage of synchronous motor in volts
Il=8.8 //minimum line current in ampere
P=sqrt(3)*Vl*Il
mprintf("P=%fKW\n",P/1000)//power drawn from the line //ans may vary due to round off error
pf=0.8 //operating power factor
mprintf("HP=P/746=%fhp\n",P/746)//ans may vary due to round off error //conversion of power to hp requires division by 746
S=P/(pf*1000) //total volt amperes of motor in kVA
mprintf("Q=|S|sinθΦm=|S|sin cos-1(pf)=%fkVAR",S*sin(acos(pf))) //kVAR supplied by motor to the system //ans may vary due to roundoff error












