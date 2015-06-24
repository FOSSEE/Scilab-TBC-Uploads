clc
// initialization of variables
TL1=-5+273 // lower temperature in kelvin for first situation
TH=20+273 // higher temperature in kelvin
TL2=-25+273 //lower temperature in kelvin for second situation

//solution

COP1=TL1/(TH-TL1) // carnot refrigerator COP for first situation
// Let Heat be 100 kJ
QL=100 // assumption
W1=QL/COP1 // work done for situation 1

// for situation 2
COP2=TL2/(TH-TL2) // COP carnot for second situation
W2=QL/COP2 // work done

Per=(W2-W1)*100/W1 // percentage increase in work done 
printf(" The perccentage increase in work is %.1f%%",Per)
