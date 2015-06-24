clear     
clc
disp('Exa-2.2');
Va_w=[320 0]; Vw_g=[0 65];            //Vp/q=[X Y]=>velocity of object p wrt q along X(east) and Y(north) directions.
Va_g=Va_w + Vw_g;                    //net velocity
k=norm(Va_g);                       //magnitude
s=atan(Va_g(1,2)/Va_g(1,1))*180/%pi;    //angle in rad*180/pi for conversion to degrees
printf('The magnitude of velocity Va/g(airplane wrt ground) is %.3f Km/h at %.3f degrees north of east.',k,s); 
