Z0=50;
//oscillation frequency
f=2*10^9;
w=2*%pi*f;
//transistor S-parameters at oscillation frequency

s_tr=[0.94*exp(%i*174/180*%pi),0.013*exp(-%i*98/180*%pi);1.9*exp(-%i*28/180*%pi),1.01*exp(-%i*17/180*%pi)];
s11=ss2tf(1,1);
s12=ss2tf(1,2);
s21=ss2tf(2,1);
s22=ss2tf(2,2);

//find the Z-parameters of the transistor
z_tr=ss2tf(s_tr,Z0);

//attempt to add inductor to base in order to increase instability
L=(0:0.01:2)*1e-9;

Z_L=%i*w*L;
z_L=[1,1;1,1];

N=length(L);

//create variables for the S_parameters of the transistor with the inductor
s11=zeros([1 N]);
s12=zeros([1 N]);
s21=zeros([1 N]);
s22=zeros([1 N]);

//Rollett stability factor
K=zeros([1 N]);

for n=1:N
   z_total=z_tr+z_L*Z_L(n);
   s_total=ss2tf(z_total,Z0);
   s11(n)=s_total(1,1);
   s12(n)=s_total(1,2);
   s21(n)=s_total(2,1);
   s22(n)=s_total(2,2);
   K(n)=(1-abs(s11(n))^2-abs(s22(n))^2+abs(det(s_total))^2)/2/abs(s12(n)*s21(n));
end;

plot(L/1e-9,K);
title('Stability factor of the transistor in common-base mode vs. base inductance');
xlabel('Base inductance L, nH');
ylabel('Rollett stability factor \itk')
