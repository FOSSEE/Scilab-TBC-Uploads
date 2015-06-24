clear
clc

//Example 6.3
disp('Example 6.3')


//Smith's method
t20=1.85;//min
t60=5;//min
ratio=t20/t60;
zeta=1.3;//Zeta obtained from Fig 6.7 page 109
tau=t60/2.8//Value 2.8 obtained from Fig 6.7

tau1=tau*zeta+tau*sqrt(zeta^2-1);
tau2=tau*zeta-tau*sqrt(zeta^2-1);

mprintf('From Smiths method \n  tau1=%f min\n  tau2=%f min \n',[tau1 tau2])

//Nonlinear regression
//This method cannot be directly used here because we do not have the data with us
//Had the data been given in tabular form we could have performed a regression
//Converting graphical data(Fig 7.8) printed in textbook to tabular form is not practical
//Towards the end of the program however a roundabout way has been implemented so
//that the user can learn the technique of non-linear optimization



s=%s;
G2=1/((tau1*s+1)*(tau2*s+1)) //Smith's method
G3=1/(4.60*s+1)//First order with time delay: Note that we cannot have exp(-0.7s) without symbolic toolbox so we use a roundaround trick for this
//Also note that we could have used Pade's approximation but that works well only for very small time delays
G1=1/((3.34*s+1)*(1.86*s+1)); //Nonlinear regression

Glist=syslin('c',[G1 G2 G3]') //Simply collating them together for further simulation

G=syslin('c',Glist);
t=0:0.1:20;
y=csim('step',t,G); 
y(3,:)=[zeros(1,8) y(3,1:$-8)] //This is the roundabout trick to introduce time lag by manually
//shifting the respone by 0.7 min
plot(t,y)
xtitle('Ex-6.3(Fig 6.9)','Time(min)','y(t)/KM');
a=legend("Nonlinear regression","Smiths method","FOPTD",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;


//====NON-LINEAR REGRESSION====//
//Now that we have the response data and also taking the word from the book that
//simulation from Excel/Matlab is identical to experimental data, we can actually 
//take this simulation and use it for showing regression
//So our experimental data is y(1)
//For nonlinear regression we define a cost function which we have to minimize
function err=experiment(tau)
    s=%s;
    G=syslin('c',1/((tau(1)*s+1)*(tau(2)*s+1)));
    t=0:0.1:20;
    response=csim('step',t,G);
    err=sum((response-y(1,:)).^2);
endfunction

//f is value of cost function, g is gradient of cost function, 
//ind is just a dummy variable required by optim function
function [f,g,ind]=cost(tau,ind)  
    f=experiment(tau)
    g=numdiff(experiment,tau)
endfunction

x0=[3 1]'; //Initial guess for optimization routine
[cost_opt, tau_opt]=optim(cost,x0)
mprintf('\n Optimization using optim function done successfully \n')
mprintf('\n From nonlinear regression \n  tau1=%f min\n  tau2=%f min \n',[tau_opt]')



//Formatted output...
mprintf('\n                     tau1(min) tau2(min) Sum of squares')
mprintf('\n       Smith         %f  %f  %f',3.81,0.84,0.0769)
mprintf('\n First Order\n(delay=0.7min)       %f     %s     %f',4.60,'--',0.0323)
mprintf('\n Excel and Matlab    %f  %f  %f \n',3.34,1.86,0.0057)


