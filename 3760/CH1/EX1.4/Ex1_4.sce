clc;
disp('weight of laminations is directly proportion to core volume density, which is directly proportional to  product of area and height of limbs and while taking the ratio of weight of CRGO laminations and hot rolled  laminations, height of limbs gets cancelled out(height of limbs are assumed to be equal). So, in the end ratio of weights of laminations is equal to ratio of area of core.Now area of core is given by maximum flux/flux density.According to question maximum flux remain same so ,while taking ratio of areas the maximum flux gets cancelled')
B1=1.2; //flux density in hot rolled steel laminations
B2=1.6; //flux density in CRGO steel laminations
W1=100; // weight of H.R core in kg
W2=W1*(B1/B2); // calculating weight of CRGO laminations in kg
s=((W1-W2)/W1)*100; // calculating saving in core material
printf('percentage saving in core material is %f percent\n',s);
disp('weight of wire is directly proportional to product of length of turn around core and cross section of wire.(Wire cross section is assumed to be same in CRGO and HR laminations so gets cancelled out while taking  ratio) also the length of turn is inversely proportional to square root of flux density  ')
w1= 80 // weight of Hot rolled wire
w2=w1*(sqrt(1.2/1.6)); // weight of CRGO wire 
s=((w1-w2)/w1)*100; //saving in weight of wire
printf('Percentage saving in weight of wire is %f percent',s); 
