clc
clear 
printf("example 2.3 page number 72\n\n")

//to find equivalent mass of metal

P=104.3     //total pressure in KPa
pH2O=2.3    //in KPa
pH2=P-pH2O; //in KPa

VH2=209*pH2*273/(293*101.3)

printf("volume of hydrogen obtained = %f ml\n\n",VH2)

//calculating amount of metal having 11.2l of hydrogen

m=350/196.08*11.2   //mass of metal in grams
printf("mass of metal equivalent to 11.2 litre/mol of hydrogen = %f gm",m)
