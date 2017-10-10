//given poles are -1, -2+%i , -2-%i and zero is s=-3

num=poly([-3],'s','roots');
den=poly([5 9 5 1 ],'s','coeff');
G=k*num/den;
disp(G,"G(s)=")

//to find k
//G(0)=10  given

k=(10*(0+1)*(0+0+5))/3
disp(k,"value of k is")

disp(G,"transfer function is")




