//Page Number: 11.21
//Example 11.16
clc;
//(b)I(X;Y)
//Given
a=0.5;
p=0.1;
//As we know
//P(Y)=P(X)*P(Y/X)
//We have
PX=[a (1-a)];
PYbyX=[(1-p) p;p (1-p)];
PY=PX*PYbyX;

//As H(Y)=-Sum of[P(yi)log2P(yi)] 
//Where i=0 to n;
HofY=0;
for i=1:2
    HofY=HofY+(PY(i)*log2(PY(i)));
end

//For BSC, I(X;Y)=H(Y)+plog2(p)+(1-p)log2(1-p)
IXY=-HofY+[(p*log2(p))+((1-p)*log2(1-p))];
disp(IXY,'I(X;Y) for a=0.5 and p=0.1:');


//(c)I1(X;Y)
//Given
a1=0.5;
p1=0.5;
//As we know
//P(Y)=P(X)*P(Y/X)
//We have
PX1=[a1 (1-a1)];
PYbyX1=[(1-p1) p1;p1 (1-p1)];
PY1=PX1*PYbyX1;

//As H(Y)=-Sum of[P(yi)log2P(yi)] 
//Where i=0 to n;
HofY1=0;
for i=1:2
    HofY1=HofY1+(PY1(i)*log2(PY1(i)));
end


//For BSC, I(X;Y)=H(Y)+plog2(p)+(1-p)log2(1-p)
IXY1=-HofY1+(p1*log2(p1))+((1-p1)*log2(1-p1));
disp(IXY1,'I(X;Y) for a=0.5 and p=0.5:');
