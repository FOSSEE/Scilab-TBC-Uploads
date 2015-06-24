//Ex2.4.2.;Calculate anglr made by beam radiation with the normal to a flat collector.
gama=0;//since collector is pointing due south.
//For this case we have equation : cos_(theta_t)=cos(fie-s)*cos(delta)*cos(w)+sin(fie-s)*sin(delta)
//with the help of cooper eqn on december 1,
n=335;
//let
a=(360/365)*(284+n);aa=(a*%pi)/180;
//therefore
delta=23.45*sin(aa);
printf(" delta=%f degree",delta);
//Hour angle w corresponding to 9.00 hour=45 Degreew
w=45;//degree
//let
a=cos(((28.58*%pi)/180)-((38.58*%pi)/180))*cos(delta*%pi*180^-1)*cos(w*%pi*180^-1);
b=sin(delta*%pi*180^-1)*sin(((28.58*%pi)/180)-((38.58*%pi)/180));
//therefore
cos_of_theta_t=a+b;
theta_t=acosd(cos_of_theta_t);
printf("\n theta_t=%f Degree",theta_t);
