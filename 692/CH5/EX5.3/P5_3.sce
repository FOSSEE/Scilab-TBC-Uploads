//EXAMPLE 5.3
//DETERMINE DFT OF GIVEN SEQUENCE

clc;
clear;
N = input("length of sequence,N  =  ");
M = input("M point DFT = ");
if M > N 
    x = [ones(1,N),zeros(1,M-N)];
    disp(x,'the sequence is :');
    for n=0:M-1
        for k=0:M-1
            W(n+1,k+1) = exp(-(%i*2*%pi*k/M)*n);
        end
    end
    X = W*x';
    disp(X,'DFT is, X = ');
else
    disp('invalid computation');
end


n=0:M-1;
clf();
figure(0)
a = gca();
plot2d3(n,x,2) //  plotting the sequence
plot(n,x,'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2.5;
xtitle('original sequence','n','x[n]');

figure(1)
a = gca();
plot2d3(n,abs(X),2)  //  plotting absolute value of DFT of sequence
plot(n,abs(X),'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2.5;
xtitle('magnitude plot','M','Absolute value');

