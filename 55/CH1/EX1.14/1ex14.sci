A=[1,2,3,4,5];  //eatables for salad preparation 1=onion,2=tomato,3=carrot,4=cabbage,5=cucumber
p=length(A);   //total number of eatables available  
n=2^p-1;  //no salad can be made without atleast one of the eatables.Hence null set isn't counted
disp(n,'number of different salads that can be prepared using the given eatables')