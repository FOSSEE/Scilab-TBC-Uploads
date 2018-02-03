clear
//

//variable declaration

PA=15.0       //vertical loading at point A,KN
PB=30.0       //vertical loading at point B,KN
PC=30.0       //vertical loading at point C,KN
PD=30.0       //vertical loading at point D,KN
PE=15.0       //vertical loading at point E,KN

//Due to symmetry, the reactions are equal
RA=(PA+PB+PC+PD+PE)/2
RB=RA
//Drop perpendicular CH on AF. 
//in traingle ACH

angleACH=45.0*%pi/180    //angleACH,°
angleFCV=30.0*%pi/180    // FC is inclined at 30° to vertical i.e., 60° to horizontal and CH = 5 m 
CH=5.0
angleFCH=60.0*%pi/180

//It is not possible to find a joint where there are only two unknowns. Hence, consider section (1)–(1). 
//For left hand side part of the frame
//moment at C

FAE=(RA*CH-PA*CH-PB*CH/2)/(CH)
printf("\n FAE= %0.0f KN (Tension)",FAE)

//Assuming the directions for FFC and FBC 
//sum of vertical & sum of horizontal forces is zero

//FFC=FBC*sqrt(2)-RA

FBC=(RA*sin(angleFCH)-PA)/(sqrt(2)*sin(angleFCH)-(1/sqrt(2)))
printf("\n FBC= %0.2f KN (Comp.)",FBC)

FFC=FBC*sqrt(2)-RA
printf("\n FFC= %0.2f KN (Tension)",FFC)

//Assumed directions of FBC and FFC are correct. Therefore, FBC is in compression and FFC is in tension. Now we can proceed with method of joints to find the forces in other members. Since it is a symmetric truss, analysis of half the truss is sufficient. Other values may be written down by making use of symmetrry.

//Joint B: sum of forces normal to AC = 0, gives 

FBF=PC*cos(angleACH)

//sum of forces parallel to AC = 0, gives 

FAB=FBC+PC*sin(angleACH)

printf("\n FAB= %0.2f KN (Comp.)",FAB)



//JOINT A
//sum of vertical & sum of horizontal forces is zero

FAF=(FAB*sin(angleACH)+PA-RA)/sin(angleFCV)

printf("\n FAF= %0.2f KN (Tension)",FAF)
