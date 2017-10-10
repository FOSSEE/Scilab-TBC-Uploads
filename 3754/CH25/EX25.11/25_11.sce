clear//

//Variables

hfe = 50.0                  //Current gain

//Calculation

hfb = -hfe / (1 + hfe)      //hfb
hfc = -(1 + hfe)            //hfc  

//Result

printf("\n Value of hfb =  %0.2f .\nValue of hfc =  %0.3f .",hfb,hfc)
