//Page Number: 11.15
//Example 11.7
clc;

//(a)Channel Matrix
//Given
Py1byx1=0.9;
Py2byx1=0.1;
Py1byx2=0.2;
Py2byx2=0.8;
PYbyX=[Py1byx1 Py2byx1;Py1byx2 Py2byx2];
disp(PYbyX,'Channel Matrix,P(Y/X):');

//(b)Py1 and Py2
//Given
Px1=0.5;
Px2=Px1;
//As P(Y)=P(X)*P(Y/X)
PX=[Px1 Px2];
PY=PX*PYbyX;
disp(PY,'P(y1) P(y2):');

//(c)Joint Probabilities P(x1,y2) and P(x2,y1)
//Diagonalizing PX
PXd=diag(PX);
PXY=PXd*PYbyX;
disp(PXY(2,1),PXY(1,2),'P(x1,y2) P(x2,y1)');

