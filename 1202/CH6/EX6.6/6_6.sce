clear
clc

//Example 6.6
disp('Example 6.6')

mprintf("\n  It is not possible to fit Model 1 or \n  plot it because experimental data...
  has not been given in the book. \n  Hence we simply plot Model 2,3,4 \n")
  

//Model 2
a=[3.317 -4.033 2.108 0.392 ]'
b=[-0.00922 0.0322 -0.0370 0.0141]';
uk=[ones(120,1)];   //Inputs-step at t=1 min
yk=zeros(120,1);    //Outputs initialization

for k=5:120
    yk(k)=a(1)*yk(k-1)+a(2)*yk(k-2)+a(3)*yk(k-3)+a(4)*yk(k-4)...
            +b(1)*uk(k-1)+b(2)*uk(k-2)+b(3)*uk(k-3)+b(4)*uk(k-4);
end
//Model 2 trial with transfer function
//a=-flipdim([-1 3.317 -4.033 2.108 0.392 ]',1);
//b=flipdim([-0.00922 0.0322 -0.0370 0.0141]',1);
//
//Gz=poly(b,"z","coeff")/poly(a,"z","coeff");
//u=ones(120,1);
//Gz=syslin('d',Gz);
//yk=flts(u',Gz)

//Although the code is correct, the values given in the book for the coeffs
//of the ARX model are wrong and hence the system diverges(blows up)

mprintf('Although the code is correct, the values \n given in the book for the coeffs of model 2...
\n of the ARX model are wrong and hence the system diverges(blows up)')

//Model 3
s=%s;
G3=0.082/(7.95*s+1);//We have to add delay of 44.8 min
//Model 4
G4=0.088*(1-12.2*s)/(109.2*s^2+23.1*s+1);//We have to add delay of 25.7 min

G=syslin('c',[G3;G4]);
t=[0:0.1:120]';
y=csim('step',t,G);

y(1,:)=[zeros(1,448) y(1,1:$-448)]
y(2,:)=[zeros(1,257) y(2,1:$-257)]
plot2d(t,y')

xtitle('Ex-6.6','Time(min)','y(t)');
a=legend("Model-3","Model-4",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
