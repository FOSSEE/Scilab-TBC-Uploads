clc;
clear;
format('v',11);
r=[2 3 4];                                                                      //Given Position vector r
disp(r,'Given the vector r=');
modr=sqrt(2^2+3^2+4^2);                                                         //Magnitude of the given vector r
Ax=(2/modr);                                                                    //Coeffitient in the X direction
Ay=(3/modr);                                                                    //Coeffitient in the Y direction
Az=(4/modr);                                                                    //Coeffitient in the Z direction
//Displaying the direction cosines and the angles
format('v',8)
disp('The direction cosines of the  given vector are:');
disp(Ax,'Ax=')                                                                              
disp(Ay,'Ay=')
disp(Az,'Az=')

x=[Ax Ay Az];
format('v',6)
y=acosd(x);
disp(y,'The angles that the given vector makes with the three vectors are (in Degree):')
