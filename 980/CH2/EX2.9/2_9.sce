clc;
clear;
format('v',11);
r=[1,1,1];                                                                      //Given point r
rho=sqrt(r(1)^2+r(2)^2);                                                        //Computing the rho coordinate
phi=atan(r(2)/r(1));                                                            //Computing phi coordinate
z=r(3);                                             
format('v',7)
c=[rho,phi,z];                                                                  //Coordinates in the cylindrical coordinates
disp(c,'The equivalent cylindrical coordinates of the given point are (rho, phi, z)= ');                      // Displaying the coordinates
