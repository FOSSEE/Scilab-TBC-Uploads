//7.1
clc;
//The coil has resistance of R ohm and inductance L2
//ZKL=25+j(2*%pi*f)*0.05;
ZLM=100;
//ZKN=(R+2)+j(2*%pi*f)*L2;
ZNM=100;
//Now (ZKL/ZLM)=(ZKN/ZNM)
//((25+j(2*%pi*f)*0.05)/100)=((R+2)+j(2*%pi*f)*L2/100)
//Equating Real and imaginary parts
//we have 25=R+2
//2*%pi*f)*0.05=2*%pi*f)*L2
R=23;
L2=50;
printf("Resistance=%.0f ohm",R)
printf("\nInductance=%.0f mH",L2)