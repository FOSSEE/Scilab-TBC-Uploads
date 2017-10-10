clc;
F=800;//N Firce in verical direction
us=0.35;// Coeffiecient of static friction
uk=0.25;//Co=efficient of kinetic friction
theta=25;//degree, angle of inclination
theta=theta*%pi/180;//rad, Conversion into radian
// Force P start block moving up
// At static equillibrium Tan(Theta_s)=us
theta_s=atan(us);//rad
P=F*tan(theta+theta_s);//N,Force P to start block moving up
printf("Force P to start block moving up is %.0f N\n",P);


// Force P to keep block moving up
// At kinetic equillibrium Tan(Theta_k)=uk
theta_k=atan(uk);//rad
P=F*tan(theta+theta_k);//N,Force P to keep block moving up
printf("Force P to keep block moving up is %.0f N\n",P);


// Force P to prevent  block from sliding down

theta_s=atan(us);//rad
P=F*tan(theta-theta_s);//N,Force P to prevent  block from sliding down
printf("Force P to prevent  block from sliding down is %.0f N\n",P);
