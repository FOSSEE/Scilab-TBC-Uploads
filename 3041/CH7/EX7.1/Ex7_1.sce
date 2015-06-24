//Variable declaration
V1=120                   //negative terminal Vn(uV)
V2=80                    //positive terminal Vp(uV)
Ad=10**3                 //difference mode gain


//Calculations
Vd=V1-V2                //difference mode signal(uV)  
Vc=(V1+V2)/2            //common mode signal(uV)

//Part a
CMRR=100.                    //common mode rejection ratio
Vo=Ad*Vd*(1+(Vc/(CMRR*Vd)))  //output voltage(mV)
          
//Part b
CMRR=10**5.                    //common mode rejection ratio
Vo1=Ad*Vd*(1+(1/CMRR)*(Vc/Vd)) //output voltage(mV) 

//Results
printf ("output voltage is %.f mV",Vo/1E+3)
printf ("output voltage is %.f mV",Vo1/1E+3)
