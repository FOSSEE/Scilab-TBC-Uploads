H=1;   //heads of a coin
T=2;   //tails of the coin
S=[111,112,121,122,211,212,221,222]  //sample space for the toss of a coin three times. 111 implies heads all three times,112 implies heads on first two tosses and tails on the third toss
A=[111,112,121,122];  //event that first toss is heads
B=[111,112,211,212];  //event that second toss is heads
C=[112,211];         //event that exactly two heads appear in a row
PA=length(A)/length(S);
disp(PA,'probability of A is')
PB=length(B)/length(S);
disp(PB,'probability of B is')
PC=length(C)/length(S);
disp(PC,'probability of C is')
AnB=intersect(A,B)
AnC=intersect(A,C)
BnC=intersect(B,C)
PAnB= length(AnB)/length(S);
disp(PAnB,'probability of the event AnB')
PAnC= length(AnC)/length(S);
disp(PAnC,'probability of the event AnC')   
PBnC= length(BnC)/length(S);
disp(PBnC,'probability of the event BnC')   
if((PA*PB)==PAnB),
 disp("A and B are independent")
else
 disp("A and B are dependent")
end
if((PA*PC)==PAnC),
  disp("A and C are independent")
else
 disp("A and C are dependent")
end
if((PB*PC)==PBnC),
  disp("B and C are independent")
else
  disp("B and C are dependent")
end