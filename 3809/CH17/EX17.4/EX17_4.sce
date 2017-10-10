//Chapter 17, Example 17.4
clc
//Initialisation
VDD=15                          //voltage 
Vq=10                       //quiescent output voltage
RD=2.5*10**3                    //resistance in Ohm
Vp=-6                            //voltage
IDSS=8*10**-3                           //saturation drain current in amp

//Calculation
VR=VDD-Vq                          //voltage 
ID=VR/RD                         //quiescent drain current
VGS=Vp*(1-sqrt(ID/IDSS))          //voltage
Rs=VGS/ID                        //resistance in ohm


//Results
printf("Rs = %.1f kOhm\n",-Rs/1000)
printf("ID = %d mA\n",ID*1000)
printf("VGS = %d V\n",VGS)
