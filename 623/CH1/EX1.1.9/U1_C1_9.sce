//variable initialization
l_dash=1                                                                                                //length of the rod in frame s' (meter)
Theta_dash_degree=45                                                                                    //angle of the rod with x-axis in frame s' (degree)
Beta=1/2                                                                                                //value of Beta

//calculation of the length of the rod and its inclination with x-axis in the frame s
Theta_dash_radian=Theta_dash_degree*(%pi/180);                                                          //conversion of angle Theta in radian from degree (radian)
l=((l_dash^2)*((sin(Theta_dash_radian))^2+((1-(Beta^2))*((cos(Theta_dash_radian))^2))))^(1/2);          //length of the rod in frame s (meter)
tan_theta=tan(Theta_dash_radian)/((1-Beta^2)^(1/2));                                                    //tan of angle of rod with x-axis in frame s
theta=atand(tan_theta);                                                                                 //angle of rod with x-axis in frame s (degree)

printf("\n\t The length of the rod = %f meter\n\t Inclination of rod with x-axis = %f degree",l,theta);
