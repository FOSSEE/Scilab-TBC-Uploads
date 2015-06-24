

//Variable declaration
BW=30*10**3               //specified bandwidth(k Hz)
fc=18*10**3               //centered frequency(Hz)
R1=20                     //resistance(k ohms) 
R2=180                    //resistance(k ohms)  
C=1.2*10**-9              //capacitance(F)
G=40                      //pass band gain(dB)
g=20                      //pass region gain(dB)

//Calculationsv
fc1=fc-(BW/2)             //high pass section frequency(Hz)
fc2=fc+(BW/2)             //low pass section frequency(Hz)
Rfc1=1/(2*%pi*fc1*C)  //high pass section resistance(k ohms)
Rfc2=1/(2*%pi*fc2*C)  //low pass section resistance(k ohms)
Gfc1=G-g                  //gain at frequency 0.3KHz(dB)
Gfc2=G-2*6                //gain at frequency 132KHz(dB)

//Results
printf ("R1 and R2 are %.1f K ohms and %.1f K ohms",R1,R2)
printf ("Rfc1 is %.f k ohms and Rfc2 is %.f k ohms",Rfc1/1E+3,Rfc2/1E+3)
printf ("filter gain at frequencies 0.3 KHz is %.1f dB and 132 k Hz are %.1f dB",Gfc1,Gfc2)
