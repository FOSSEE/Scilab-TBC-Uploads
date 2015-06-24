clear;
clc;
printf("\n Example 18.1");
Cse=0.132;        //in kg/kg
Cs = [0.091 0.097 0.105 0.113 0.125 0.128 0.132];
C = Cs/Cse;
C1 = 1-C;
C2 = 1-C^2;
t = [2 4 10 20 40 60 120];
//xset('window',1);
//
plot(t,C1,t,C2);
xtitle('1-(Cs/Cs* vs t(min)',"1-(Cs/Cs*)",'t(min)');
legend("1-(Cs/Cs*)","1-(Cs/Cs*)^2");

//From the plot π^2Dr/ri^2 = 0.043
//For a pellet of twice the radius, that is r = 2ri
Slope = -0.043/4;
printf("\n Slope = %.3f",Slope);

//Thus, when the radius = 2ri
function[x]=equation1(t)
    x = 1-(6/(%pi)^2)*exp(-Slope*t);
    funcprot(0);
endfunction

//CS/CS*=[1 − exp(−κDR/tri^2)]^0.5
//κDR/ri^2 = 0.04
//For a pellet twice the size

function[x1]=equation2(t)
    x1 = [1-exp(-0.01*t)]^0.5;
    funcprot(0);
endfunction

printf("\n t(min)               Cs(kg/kg)       ");
printf("\n               equation(i)         equation(ii)  ");
t = [4 20 60];               //t is in min
i=1;
while i<=3
printf("\n %f                %f                    %f      ",t(i),Cse*equation1(t(i)),Cse*equation2(t(i)));
i=i+1;
end
    
    
    
    
    
    
    
    
    
    
    
    



