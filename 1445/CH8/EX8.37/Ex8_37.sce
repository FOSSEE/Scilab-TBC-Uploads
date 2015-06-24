//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 37

disp("CHAPTER 8");
disp("EXAMPLE 37");

//250 V DC machine
//VARIABLE INITIALIZATION
p_o=50*1000;                //in Watts
v_t=250;                    //in Volts
loss1=5000;                 //total core loss in Watts
loss2=2000;                 //total core loss in Watts (when speed is reduced to half)
speed=125/100;

//SOLUTION

//solution (a)

//W_h=A*N, where W_h=hysteresis loss, A=constant and N=speed
//W_e=B*(N^2), where W_e=eddy current loss, B=constant and N=speed
//W_h+(W_e^2)=loss1 =>W_h+W_e=5000
//(W_h/2)+(W_e/4)=loss2 =>(0.5*W_h)+(0.25*W_e)=2000 (when speed reduces to half)
//So, we get two equations
//W_h+W_e=5000.......................eq(i)
//(0.5*W_h)+(0.25*W_e)=2000..........eq(ii)
//solving the equations by matrix method
A=[1 1;0.5 0.25];
b=[5000;2000];
x=inv(A)*b;
W_h1=x(1,:);                //to access the 1st row of 2X1 matrix 
W_e1=x(2,:);                //to access the 2nd row of 2X1 matrix 
disp("Solution (a)");
disp(sprintf("The hysteresis loss at full speed is %d W",W_h1));
disp(sprintf("The eddy current loss at full speed is %d W",W_e1));

//solution (b)
W_h2=speed*W_h1;
W_e2=(speed^2)*W_e1;
disp("Solution (b)");
disp(sprintf("The hysteresis loss at 125%% of the full speed is %d W",W_h2));
disp(sprintf("The eddy current loss at 125%% of the full speed is %d W",W_e2));

//END 

