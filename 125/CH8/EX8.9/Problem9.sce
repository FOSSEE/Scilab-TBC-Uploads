//Caption: Develop a perceptron AND function with bipolar inputs and targets
//Problem 9
//page441
close;
clear;
clc;
X1 = [1,-1,1,-1]; //X1 and X2 are input vectors to AND function
X2 = [1,1,-1,-1];
//b = [1,1,1,1];    //Biasing vector
T = [1,-1,-1,-1]; //Target vector for AND function
W1 = 0; //Weights are initialized 
W2 = 0;
b = 0;  //bias initialized 
alpha = 1; //learning rate
for i = 1:length(X1)
    Yin(i) = b+X1(i)*W1+X2(i)*W2;
    if (Yin(i)>=1) 
        Y(i)=1;
    elseif((Yin(i)<1)&(Yin(i)>=-1))
        Y(i)=0;
    elseif(Yin(i)<-1)
        Y(i)=-1;
    end
    disp(Yin(i),'Yin=')
    disp(Y(i),'Y=')
    if(Y(i)~=T(i))
        b = b+alpha*T(i);
        W1 = W1+alpha*T(i)*X1(i);
        W2 = W2+alpha*T(i)*X2(i);
        disp(b,'b=')
        disp(W1,'W1=')
        disp(W2,'W2=')
    end   
end
disp('Final Weights after one iteration are')
disp(b,'Bias Weigth b=')
disp(W1,'W1=')
disp(W2,'W2=')