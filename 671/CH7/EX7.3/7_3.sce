Ha=4/(2*%pi*0.2)
Hb=Ha
H=sqrt(Ha^2+Hb^2)
theta=(%pi+atan(-Hb/Ha))*180/%pi

disp(H,theta)