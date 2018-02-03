clear
//

//Now, we cannot find a joint with only two unknown forces without finding reactions.
//Consider the equilibrium of the entire frame,Sum of moments about A is zero,Horizontal forces & Vertical forces is zero.

//variable declaration

PB=30.0      //vertical load at point B,KN
PC=50.0      //vertical load at point C,KN 
PDv=40.0     //vertical load at point D,KN
PDh=20.0     //Horizontal load at point D,KN
PF=30.0      //vertical load at point F,KN
HA=PDh

RE=(PC*4+PDv*8+PDh*4+PF*4)/(8.0)

VA=PB+PC+PDv+PF-RE

//joint A
//sum of vertical & sum of horizontal forces is zero.

FAB=VA
FAF=HA

//joint E
//sum of vertical & sum of horizontal forces is zero.

FED=RE
FEF=0

//Joint B: Noting that inclined member is at 45°
//sum of vertical & sum of horizontal forces is zero.

theta=45.0
FBF=(VA-PB)/sin(theta*%pi/180)

printf("\n FBF= %0.4f KN (Tension) ",FBF)

FBC=FBF*cos(theta*%pi/180)

printf("\n FBC= %0.4f KN (Comp.) ",FBC)

//Joint C: 
//sum of vertical & sum of horizontal forces is zero.


FCF=PC

printf("\n FCF= %0.4f KN (Comp.) ",FCF)

FCD=FBC

printf("\n FCD= %0.4f KN (Comp.) ",FCD)

//Joint D: Noting that inclined member is at 45°
//sum of vertical & sum of horizontal forces is zero.

theta=45.0
FDF=(RE-PDv)/cos(theta*%pi/180)

printf("\n FDF= %0.4f KN (Tensile) ",FDF)

//check

FDF=(FCD+PDh)/cos(theta*%pi/180)

printf("\n FDF= %0.4f KN Checked ",FDF)
