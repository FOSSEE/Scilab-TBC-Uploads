//Chapter 17, Example 17.3
clc
//Initialisation
VDD=15                          //voltage 
Vq=10                       //quiescent output voltage
VGS=3                           //voltage
RD=2.5*10**3                    //resistance in Ohm

//Calculation
VR=VDD-Vq                          //voltage 
ID=VR/RD                         //quiescent drain current
Rs=VGS/ID                        //resistance in ohm


//Results
printf("Rs = %.1f kOhm\n",Rs/1000)
printf("ID = %d mA\n",ID*1000)
printf("VR = %d V",VR)
